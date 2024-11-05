from datetime import datetime
from airflow import DAG
from google.cloud import storage, bigquery
from airflow.operators.python import PythonOperator
from airflow.providers.google.cloud.operators.bigquery import BigQueryExecuteQueryOperator
from airflow.providers.google.cloud.operators.gcs import GCSListObjectsOperator
import logging

def test_bigquery_python():
    """Test BigQuery connectivity using Python client"""
    client = bigquery.Client()
    datasets = list(client.list_datasets(max_results=5))
    print("Successfully connected to BigQuery!")
    print(f"First 5 datasets in project: {[dataset.dataset_id for dataset in datasets]}")


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
    
     # Test GCS using operator
    test_gcs_operator = GCSListObjectsOperator(
        task_id='test_gcs_operator',
        bucket='01-initial-setup-bucket',  # Replace with your bucket
        prefix='',  # Empty prefix to list root
        delimiter='/'  # List only root level
    )

     # Test GCS using Python client
    test_gcs_python_task = PythonOperator(
        task_id='test_gcs_python',
        python_callable=test_gcs_python
    )
     # Test BigQuery using operator
    test_bq_operator = BigQueryExecuteQueryOperator(
        task_id='test_bq_operator',
        sql='SELECT 1',
        use_legacy_sql=False,
    )

    # Test BigQuery using Python client
    test_bq_python_task = PythonOperator(
        task_id='test_bigquery_python',
        python_callable=test_bigquery_python
    )

    test_gcs_python_task >> test_gcs_operator >> [test_bq_operator, test_bq_python_task]

