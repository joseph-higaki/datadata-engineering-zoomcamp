from datetime import datetime
from airflow import DAG
from google.cloud import storage
from airflow.operators.python import PythonOperator
import logging


def test_gcs_python():
    """Test GCS connectivity using Python client"""
    print(1)
    storage_client = storage.Client()
    buckets = list(storage_client.list_buckets(max_results=5))
    print("Successfully connected to GCS!")
    print(f"First 5 buckets in project: {[bucket.name for bucket in buckets]}")

def hello_world():
    logger = logging.getLogger("airflow.task.test_gcs_python")
    logger.info("Starting GCS connectivity test")
    print(f"hello world{1/0}")
    logger.info("Finished GCS connectivity test")



with DAG(
    'gcp_connectivity_test',
    schedule=None,  # Manual trigger only
    start_date=datetime(2024, 1, 1),
    catchup=False,
    tags=['test']
) as dag:    
     # Test GCS using Python client
    test_gcs_python_task = PythonOperator(
        task_id='test_gcs_python',
        python_callable=hello_world
    )

test_gcs_python_task