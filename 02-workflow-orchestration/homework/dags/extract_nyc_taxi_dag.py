from airflow import DAG
from datetime import datetime
from airflow.operators.python import PythonOperator
from airflow.operators.bash import BashOperator
from typing import List
import os
import pyarrow.csv as pv
import pyarrow.parquet as pq
from shutil import copy as shutil_copy
from google.cloud import storage


def format_to_parquet(downloaded_filename, **kwargs):
   dag = kwargs["dag"]
   dag.log.info(f"downloaded_filename: {downloaded_filename}")
   
    # parquet fileName is in this case, same location, different extension
   parquet_filename = downloaded_filename.replace('.csv.gz', '.parquet').replace('.csv', '.parquet')
   if downloaded_filename.endswith('.csv') or downloaded_filename.endswith('.csv.gz'): 
      dag.log.info("downloaded_filename in csv. reading")
      table = pv.read_csv(downloaded_filename)
      pq.write_table(table, parquet_filename)
      dag.log.info(f"parquet filename written {parquet_filename}")            
   elif downloaded_filename.endswith('.parquet'):
      # dont need to reformat, just move the file
      dag.log.info(f"File already in parquet format {parquet_filename}")
      if downloaded_filename != parquet_filename:         
         shutil_copy(downloaded_filename, parquet_filename)
         dag.log.info(f"moved file from: {downloaded_filename} to: {parquet_filename}")
   else:        
      dag.log.error(f"Unkown file format extension {downloaded_filename}")        
      return ""
   return parquet_filename

def upload_to_gcs(bucket_name: str, parquet_filename:str,  **kwargs):
   dag = kwargs["dag"] 
   dag.log.info(f"parquet_filename: {parquet_filename}")    
   destination_blob_name = os.path.basename(parquet_filename)
   dag.log.info(f"destination_blob_name: {destination_blob_name}")       

   storage_client = storage.Client()
   bucket = storage_client.bucket(bucket_name)
   blob = bucket.blob(destination_blob_name)
   #generation_match_precondition = 0
   #blob.upload_from_filename(parquet_filename, if_generation_match=generation_match_precondition)
   blob.upload_from_filename(parquet_filename)
   dag.log.info(f"uploaded {parquet_filename} succesfully to {bucket_name}")       
   return f"gs://{bucket_name}/{destination_blob_name}"

def create_ingest_dag(
      dag_id: str,
      start_date: datetime,
      end_date: datetime,
      schedule_interval:str,
      catchup: bool,
      tags: List[str],      
      max_active_runs: int,
      source_url_template: str,
      downloaded_filename_template: str,
      bucket_name: str
      ):       
   
   the_dag = DAG(
      dag_id = dag_id, 
      start_date=start_date,
      end_date=end_date,
      schedule_interval=schedule_interval,
      catchup=catchup,
      tags=tags,
      max_active_runs=max_active_runs
      )
       
    
   download_file_task = BashOperator(
      task_id =  "download_file_task",      
      #bash_command= f"echo {source_url_template} {DOWNLOADED_FILE_TEMPLATE}",
      bash_command=f"curl -sSLf {source_url_template} --create-dirs --output {downloaded_filename_template}",
      dag=the_dag
   )

   remove_download_file_task = BashOperator(
       task_id =  "remove_download_file_task",
       #bash_command="echo {{ ds }}"
       #bash_command=f"echo '{DOWNLOADED_FILE_TEMPLATE}'",
       bash_command="rm -f " + downloaded_filename_template,
       dag=the_dag
    )
   
   remove_parquet_file_task = BashOperator(
       task_id =  "remove_parquet_file_task",
       #bash_command="echo {{ ds }}"
       bash_command="rm -f "+ "{{ task_instance.xcom_pull(task_ids='format_to_parquet_task', key='return_value') }}",
       #bash_command=f"rm {downloaded_filename_template}",
       dag=the_dag
    )
   
   format_to_parquet_task = PythonOperator(
      task_id =  "format_to_parquet_task",
      op_kwargs ={"downloaded_filename": downloaded_filename_template},
      python_callable = format_to_parquet,
      dag=the_dag
   )

   upload_to_gcs_task = PythonOperator(
      task_id =  "upload_to_gcs_task",
      op_kwargs ={
         "parquet_filename": "{{ task_instance.xcom_pull(task_ids='format_to_parquet_task', key='return_value') }}",
         "bucket_name": bucket_name
         },
      python_callable = upload_to_gcs,
      dag=the_dag
   )
   
   download_file_task >> format_to_parquet_task    
   format_to_parquet_task >> upload_to_gcs_task
   upload_to_gcs_task >> remove_download_file_task
   upload_to_gcs_task >> remove_parquet_file_task
   return the_dag






URL_HOST = "https://d37ci6vzurychx.cloudfront.net"
AIRFLOW_HOME_LOCAL_TEMP_DIR = f"{os.environ.get("AIRFLOW_HOME", "/opt/airflow/")}/raw_data"
# Double escape {{{{}}}} because is going through a format fucntion first
SOURCE_URL_TEMPLATE = URL_HOST + "/trip-data/{trip_type}_tripdata_{{{{macros.ds_add(ds,-1)[0:7]}}}}.parquet"
DOWNLOADED_FILE_TEMPLATE = AIRFLOW_HOME_LOCAL_TEMP_DIR + "/{trip_type}_tripdata_{{{{macros.ds_add(ds,-1)[0:7]}}}}.parquet"
BUCKET_ID = os.environ.get("GCP_GCS_BUCKET")

version = "1.0"
trip_data_start_date = datetime(2019,2,1)
trip_data_end_date = datetime(2021,7,1)
trip_data_schedule_interval = "0 21 1 * *"

yellow_dag_test = create_ingest_dag(
   dag_id="yellow_dag_test_"+version,
   start_date=trip_data_start_date,
   end_date=trip_data_end_date,
   schedule_interval=trip_data_schedule_interval,
   catchup=True,
   tags=['ingest', 'nyc_taxi', 'trip_data'],
   source_url_template=SOURCE_URL_TEMPLATE.format(trip_type="yellow"),
   downloaded_filename_template=DOWNLOADED_FILE_TEMPLATE.format(trip_type="yellow"),
   bucket_name=BUCKET_ID,
   max_active_runs = 2
)

green_dag_test = create_ingest_dag(
   dag_id="green_dag_test_"+version,
   start_date=trip_data_start_date,
   end_date=trip_data_end_date,
   schedule_interval=trip_data_schedule_interval,
   catchup=True,
   tags=['ingest', 'nyc_taxi', 'trip_data'],
   source_url_template=SOURCE_URL_TEMPLATE.format(trip_type="green"),
   downloaded_filename_template=DOWNLOADED_FILE_TEMPLATE.format(trip_type="green"),
   bucket_name=BUCKET_ID,
   max_active_runs = 2
)

fhv_dag_test = create_ingest_dag(
   dag_id="fhv_dag_test_"+version,
   start_date=trip_data_start_date,
   end_date=trip_data_end_date,
   schedule_interval=trip_data_schedule_interval,
   catchup=True,
   tags=['ingest', 'nyc_taxi', 'trip_data'],
   source_url_template=SOURCE_URL_TEMPLATE.format(trip_type="fhv"),
   downloaded_filename_template=DOWNLOADED_FILE_TEMPLATE.format(trip_type="fhv"),
   bucket_name=BUCKET_ID,
   max_active_runs = 2
)

zone_dag = create_ingest_dag(
   dag_id="zone_dag_"+version,
   start_date=trip_data_start_date,
   end_date=trip_data_end_date,
   schedule_interval="0 20 1 */6 *",
   catchup=True,
   tags=['ingest', 'nyc_taxi', 'zone_lookup'],
   source_url_template=f"{URL_HOST}/misc/taxi_zone_lookup.csv",
   downloaded_filename_template= AIRFLOW_HOME_LOCAL_TEMP_DIR + "/taxi_zone_lookup_{{macros.ds_add(ds,-1)[0:7]}}.csv",   
   bucket_name=BUCKET_ID,
   max_active_runs = 1
)


# Fetching csv from /DataTalksClub
# "https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz"
# dtc_URL_HOST = "https://github.com/DataTalksClub/nyc-tlc-data/releases/download"
# dtc_AIRFLOW_HOME_LOCAL_TEMP_DIR = f"{os.environ.get("AIRFLOW_HOME", "/opt/airflow/")}/raw_data/dtc"
# # Double escape {{{{}}}} because is going through a format fucntion first
# dtc_SOURCE_URL_TEMPLATE = dtc_URL_HOST + "/{trip_type}/{trip_type}_tripdata_{{{{macros.ds_add(ds,-1)[0:7]}}}}.csv.gz"
# dtc_DOWNLOADED_FILE_TEMPLATE = dtc_AIRFLOW_HOME_LOCAL_TEMP_DIR + "/{trip_type}/{trip_type}_tripdata_{{{{macros.ds_add(ds,-1)[0:7]}}}}.csv.gz"


# yellow_dag_test_from_DTC = create_ingest_dag(
#    dag_id="yellow_dag_test_from_DTC_18",
#    start_date=datetime(2019,7,1),   
#    end_date=datetime(2019,5,1),   
#    schedule_interval="0 21 1 * *",
#    catchup=True,
#    tags=['ingest', 'nyc_taxi'],
#    source_url_template=dtc_SOURCE_URL_TEMPLATE.format(trip_type="yellow"),
#    downloaded_filename_template=dtc_DOWNLOADED_FILE_TEMPLATE.format(trip_type="yellow"),
#    bucket_name=BUCKET_ID
# )


# URL examples
# https://d37ci6vzurychx.cloudfront.net/trip-data/fhv_tripdata_2024-01.parquet
# https://d37ci6vzurychx.cloudfront.net/trip-data/fhvhv_tripdata_2024-01.parquet
# https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2024-08.parquet
# https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2019-01.parquet
# https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2019-01.parquet
# https://d37ci6vzurychx.cloudfront.net/trip-data/fhv_tripdata_2019-01.parquet
# https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2019-09.parquet
# https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2014-03.parquet
# https://d37ci6vzurychx.cloudfront.net/misc/taxi_zone_lookup.csv
