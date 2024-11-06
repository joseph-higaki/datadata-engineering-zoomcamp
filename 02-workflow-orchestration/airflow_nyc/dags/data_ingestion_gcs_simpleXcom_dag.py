
from airflow import DAG
#from airflow.decorators import dag, task
import logging
from datetime import datetime
from airflow.operators.python import PythonOperator
from airflow.operators.bash import BashOperator
from airflow.providers.google.cloud.operators.bigquery import BigQueryCreateExternalTableOperator
import os
import pyarrow.csv as pv
import pyarrow.parquet as pq
from google.cloud import storage

PROJECT_ID = os.environ.get("GCP_PROJECT_ID")
BUCKET_ID = os.environ.get("GCP_GCS_BUCKET")
dataset_file = "yellow_tripdata_2021-01.csv.gz"
source_dataset_url = f"https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/{dataset_file}"

#source_dataset_url = f"https://d37ci6vzurychx.cloudfront.net/trip-data/{dataset_file}"
#dataset_file = "yellow_tripdata_2021-01.parquet"

path_to_local_home_storage = f"{os.environ.get("AIRFLOW_HOME", "/opt/airflow/")}/raw_data"
path_temp_local_dataset_file = f"{path_to_local_home_storage}/{dataset_file}"
dataset_parquetfile = lambda srcfile : srcfile.replace('.csv.gz', '.parquet')

def hello():
    logger = logging.getLogger("data_ingestion_gcs_simpleXcom_dag")
    logger.info("Starting  test")
    print(f"hello world{1/1}")
    logger.info("Finished test")

def format_to_parquet(full_path_src_file):
    logger = logging.getLogger("data_ingestion_gcs_simpleXcom_dag")
    logger.info(f"format_to_parquet: {full_path_src_file}")
        
    if not (full_path_src_file.endswith('.csv') or full_path_src_file.endswith('.csv.gz')) :
        logger.error(f"Unkown file format extension {full_path_src_file}")        
    else:
        table = pv.read_csv(full_path_src_file)

        # Just replace .csv.gz for .parquet
        full_path_output_parquet_file = dataset_parquetfile(full_path_src_file)
        pq.write_table(table, full_path_output_parquet_file)
        logger.info(f"parquet written {full_path_output_parquet_file}")         
        os.remove(full_path_src_file)
        logger.info(f"removed csv file {full_path_src_file}")
        return full_path_output_parquet_file

def local_to_gcs(bucket_name: str, **kwargs):
    logger = logging.getLogger("data_ingestion_gcs_simpleXcom_dag")
    logger.info("local_to_gcs")
    #logger.info(f"kwargs: {kwargs}")    
    #logger.info(f"ti: {kwargs['ti']}")
    task_instance = kwargs['ti']

    local_filename = task_instance.xcom_pull(task_ids="format_to_parquet_task", key="return_value")
    logger.info(f"local_filename: {local_filename}")    

    destination_blob_name = os.path.basename(local_filename)
    logger.info(f"destination_blob_name: {destination_blob_name}")       

    storage_client = storage.Client()
    bucket = storage_client.bucket(bucket_name)
    blob = bucket.blob(destination_blob_name)
    generation_match_precondition = 0
    blob.upload_from_filename(local_filename, if_generation_match=generation_match_precondition)
    logger.info(f"uploaded {local_filename} succesfully to {bucket_name}")    
    os.remove(local_filename)
    logger.info(f"removed csv file {local_filename}")    
    return f"gs://{bucket_name}/{destination_blob_name}"

with DAG(
    'data_ingestion_gcs_simpleXcom',
    schedule=None,  # Manual trigger only
    start_date=datetime(2024, 1, 1),
    catchup=False,
    tags=['test', 'data_ingestion_gcs', 'nyc']
) as dag:
    
     # Test GCS using Python client
    hello_task = PythonOperator(
        task_id="hello_task",
        python_callable=hello
    )

    download_dataset_task = BashOperator(
        task_id="download_dataset_task",
        #bash_command=f"echo {source_dataset_url} create-dirs output {path_temp_local_dataset_file}"        
        bash_command=f"curl -sSL {source_dataset_url} --create-dirs --output {path_temp_local_dataset_file}"
    )

    format_to_parquet_task = PythonOperator(
        task_id="format_to_parquet_task",        
        python_callable=format_to_parquet,        
        op_kwargs={
            "full_path_src_file":path_temp_local_dataset_file
        }
    )

    local_to_gcs_task = PythonOperator(
        task_id="local_to_gcs_task",
        python_callable=local_to_gcs,
        #provide_context=True,  # Enable context passing
        op_kwargs={
            "bucket_name":BUCKET_ID,
            "destination_blob_name": dataset_parquetfile(dataset_file)            
        }
    )

    bigquery_external_table_create_task =BigQueryCreateExternalTableOperator(
        task_id="bigquery_external_table_create_task",
        table_resource={
            "tableReference": {
                "project_id": PROJECT_ID,
                "datasetId": "dataset_1",
                "tableId": "external_table_xcom"
            },
            "externalDataConfiguration":{
                "sourceFormat": "PARQUET",
                "sourceUris": ["{{ task_instance.xcom_pull(task_ids='local_to_gcs_task', key='return_value') }}"]
            }
        }
    )    

hello_task >> download_dataset_task >> format_to_parquet_task >> local_to_gcs_task >> bigquery_external_table_create_task