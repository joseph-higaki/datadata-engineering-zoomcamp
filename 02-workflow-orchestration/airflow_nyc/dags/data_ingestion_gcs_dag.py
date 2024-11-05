
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

PROJECT_ID = os.environ.get("GCP_PROJECT_ID")
BUCKET_ID = os.environ.get("GCP_GCS_BUCKET")
dataset_file = "yellow_tripdata_2021-01.csv.gz"
dataset_url = f"https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/{dataset_file}"
path_to_local_home_storage = f"{os.environ.get("AIRFLOW_HOME", "/opt/airflow/")}/raw_data"
path_temp_local_dataset_file = f"{path_to_local_home_storage}/{dataset_file}"

def hello():
    logger = logging.getLogger("airflow.data_ingestion_gcs_dag")
    logger.info("Starting  test")
    print(f"hello world{1/1}")
    logger.info("Finished test")

def format_to_parquet(src_file):
    logger = logging.getLogger("airflow.data_ingestion_gcs_dag")
    logger.info("format_to_parquet")
    if src_file.endswith('.csv') or src_file.endswith('.csv.gz') :
        table = pv.read_csv(src_file)
        pq.write_table(table, src_file.replace('.csv.gz', '.parquet'))
        logger.info("parquet written")
    logger.info("removing file")
    os.remove(src_file)

def local_to_gcs():
    logger = logging.getLogger("airflow.data_ingestion_gcs_dag.hello_task")
    logger.info("local_to_gcs")

with DAG(
    'data_ingestion_gcs',
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
        bash_command=f"curl -sSL {dataset_url} --create-dirs --output {path_temp_local_dataset_file}"
    )

    format_to_parquet_task = PythonOperator(
        task_id="format_to_parquet_task",
        python_callable=format_to_parquet,
        op_kwargs={
            "src_file":path_temp_local_dataset_file
        }
    )

    local_to_gcs_task = PythonOperator(
        task_id="local_to_gcs_task",
        python_callable=local_to_gcs
    )

    bigquery_external_table_create_task =BigQueryCreateExternalTableOperator(
        task_id="bigquery_external_table_create_task",
        table_resource={
            "tableReference": {
                "project_id": "j",
                "datasetId": "p",
                "tableId": "external_table"
            },
            "externalDataConfiguration":{
                "sourceFormat": "PARQUET",
                "sourceUris": [f"gs://{'bucket'}/raw/{'parquet_file'}"]
            }
        }
    )    

hello_task >> download_dataset_task >> format_to_parquet_task