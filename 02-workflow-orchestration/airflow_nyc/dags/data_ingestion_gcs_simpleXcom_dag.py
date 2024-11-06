from airflow import DAG
import os
#from airflow.decorators import dag, task

from ingestion_gcs import hello, format_to_parquet, local_to_gcs

from datetime import datetime
from airflow.operators.python import PythonOperator
from airflow.operators.bash import BashOperator
from airflow.providers.google.cloud.operators.bigquery import BigQueryCreateExternalTableOperator


PROJECT_ID = os.environ.get("GCP_PROJECT_ID")
BUCKET_ID = os.environ.get("GCP_GCS_BUCKET")
DATASET_ID = os.environ.get("GCP_BQ_DATASET")
PATH_TO_LOCAL_HOME_STORAGE = f"{os.environ.get("AIRFLOW_HOME", "/opt/airflow/")}/raw_data"


#source_dataset_url = f"https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz"
source_dataset_url = "https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2021-02.parquet"

path_temp_local_dataset_file = f"{PATH_TO_LOCAL_HOME_STORAGE}/{os.path.basename(source_dataset_url)}"

def get_basename(file_path_or_uri):
    # Extract the base name from the path or URI
    base_name = os.path.basename(file_path_or_uri)
    
    # Remove all extensions
    base_name = os.path.splitext(base_name)[0]
    while '.' in base_name:
        base_name = os.path.splitext(base_name)[0]
    
    return base_name


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
            "bucket_name":BUCKET_ID            
        }
    )

    bigquery_external_table_create_task =BigQueryCreateExternalTableOperator(
        task_id="bigquery_external_table_create_task",
        table_resource={
            "tableReference": {
                "project_id": PROJECT_ID,
                "datasetId": DATASET_ID,
                "tableId": get_basename(source_dataset_url)
            },
            "externalDataConfiguration":{
                "sourceFormat": "PARQUET",
                "sourceUris": ["{{ task_instance.xcom_pull(task_ids='local_to_gcs_task', key='return_value') }}"]
            }
        }
    )    

hello_task >> download_dataset_task >> format_to_parquet_task >> local_to_gcs_task >> bigquery_external_table_create_task