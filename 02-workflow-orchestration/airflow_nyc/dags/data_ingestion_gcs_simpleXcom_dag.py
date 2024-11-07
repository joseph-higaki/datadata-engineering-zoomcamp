from airflow import DAG
import os
import logging

from ingestion_gcs import format_to_parquet, local_to_gcs

from datetime import datetime
from airflow.operators.python import PythonOperator
from airflow.operators.bash import BashOperator
from airflow.providers.google.cloud.operators.bigquery import BigQueryCreateExternalTableOperator


PROJECT_ID = os.environ.get("GCP_PROJECT_ID")
BUCKET_ID = os.environ.get("GCP_GCS_BUCKET")
DATASET_ID = os.environ.get("GCP_BQ_DATASET")
PATH_TO_LOCAL_HOME_STORAGE = f"{os.environ.get("AIRFLOW_HOME", "/opt/airflow/")}/raw_data"


#source_dataset_url = f"https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz"
#source_dataset_url = "https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2021-03.parquet"

#path_temp_local_dataset_file = lambda x: f"{PATH_TO_LOCAL_HOME_STORAGE}/{os.path.basename(x)}"

# def path_temp_local_dataset_file(x):
#     print(f"x: {x}")
#     print(f"os.path.basename(x): {os.path.basename(x)}")
#     print(f"PATH_TO_LOCAL_HOME_STORAGE / os.path.basename(x): {PATH_TO_LOCAL_HOME_STORAGE}/{os.path.basename(x)}")
#     return f"{PATH_TO_LOCAL_HOME_STORAGE}/{os.path.basename(x)}"

def path_temp_local_dataset_file(x):
    from urllib.parse import urlparse
    parsed_url = urlparse(x)
    result = parsed_url.path.split('/')[-1]
    print(f"x: {x}")
    print(f"parsed_url.path.split(x): {result}")
    print(f"PATH_TO_LOCAL_HOME_STORAGE / parsed_url.path.split(x): {PATH_TO_LOCAL_HOME_STORAGE}/{result}")
    return f"{PATH_TO_LOCAL_HOME_STORAGE}/{result}"




def get_basename(file_path_or_uri):
    # Extract the base name from the path or URI
    base_name = os.path.basename(file_path_or_uri)    
    # Remove all extensions
    base_name = os.path.splitext(base_name)[0]
    while '.' in base_name:
        base_name = os.path.splitext(base_name)[0]    
    return base_name


def hello(**kwargs):        
    logger = logging.getLogger(kwargs["dag"].dag_id)
    logger.info(f"Starting handshaketest {kwargs["dag"].dag_id}")        
    logger.info(f"source_dataset_url_param :  {kwargs["source_dataset_url_param"]}")
    
    task_instance = kwargs['ti']
    logger.info(f"task_instance:  {task_instance}")
    logger.info(f"task_instance.dag_run:  {task_instance.dag_run}")
    logger.info(f"task_instance.dag_run.conf:  {task_instance.dag_run.conf}")
    logger.info(f"task_instance.dag_run.conf.source_dataset_url:  {task_instance.dag_run.conf['source_dataset_url']}")
    s = task_instance.dag_run.conf['source_dataset_url']
    logger.info(f"path_temp_local_dataset_file: {path_temp_local_dataset_file(s)}")
    
    print(f"hello world{1/1}")
    logger.info("Finished test")

with DAG(
    'data_ingestion_gcs_simpleXcom',
    schedule=None,  # Manual trigger only
    start_date=datetime(2024, 1, 1),
    catchup=False,
    tags=['test', 'data_ingestion_gcs', 'nyc']
) as dag:
    
    
    _source_dataset_url = "dag_run.conf['source_dataset_url']"
    #Jinja template to get the dataset URL
    jtemplate_source_dataset_url = "{{"+_source_dataset_url+"}}"
    #Jinja template to get the filename from the dataset URL:  dag_run.conf['source_dataset_url'].split('/') | last
    jtemplate_source_dataset_filename = "{{"+_source_dataset_url+".split('/') | last}}"
    #jtemplate_source_dataset_basename = "{{"+_source_dataset_url+".split('/') | last |  replace('.', '_') }}"
    jtemplate_source_dataset_basename = "{{"+_source_dataset_url+".split('/') | last | replace('.parquet','') | replace('.csv.gz','') }}"
    
    
     # Test GCS using Python client
    hello_task = PythonOperator(
        task_id="hello_task",
        python_callable=hello,
        op_kwargs={
            "source_dataset_url_param":jtemplate_source_dataset_url
        }
    )

    download_dataset_task = BashOperator(
        task_id="download_dataset_task",
        bash_command=f"echo source_dataset_url {jtemplate_source_dataset_url} - output: {PATH_TO_LOCAL_HOME_STORAGE}/{jtemplate_source_dataset_filename} - basename: {jtemplate_source_dataset_basename}"
        #bash_command=f"echo {source_dataset_url} create-dirs output {path_temp_local_dataset_file}"        
        #bash_command=f"curl -sSL {source_dataset_url} --create-dirs --output {path_temp_local_dataset_file(source_dataset_url)}"
    )

    format_to_parquet_task = PythonOperator(
        task_id="format_to_parquet_task",        
        python_callable=format_to_parquet,        
        op_kwargs={
            "full_path_src_file":jtemplate_source_dataset_url
        }
    )

    local_to_gcs_task = PythonOperator(
        task_id="local_to_gcs_task",
        python_callable=local_to_gcs,
        #provide_context=True,  # Enable context passing
        op_kwargs={
            "bucket_name":BUCKET_ID            
        }
    )

    bigquery_external_table_create_task =BigQueryCreateExternalTableOperator(
        task_id="bigquery_external_table_create_task",
        table_resource={
            "tableReference": {
                "project_id": PROJECT_ID,
                "datasetId": DATASET_ID,
                "tableId": jtemplate_source_dataset_basename
            },
            "externalDataConfiguration":{
                "sourceFormat": "PARQUET",
                "sourceUris": ["{{ task_instance.xcom_pull(task_ids='local_to_gcs_task', key='return_value') }}"]
            }
        }
    )    

hello_task >> download_dataset_task >> format_to_parquet_task >> local_to_gcs_task >> bigquery_external_table_create_task