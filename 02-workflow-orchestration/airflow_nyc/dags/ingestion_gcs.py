import logging
import os
import pyarrow.csv as pv
import pyarrow.parquet as pq
from google.cloud import storage
import shutil

get_dataset_parquetfile = lambda srcfile : srcfile.replace('.csv.gz', '.parquet')


def format_to_parquet(full_path_src_file, **kwargs):
    logger = logging.getLogger(kwargs["dag"].dag_id)    
    logger.info(f"format_to_parquet: {full_path_src_file}")
    # parquet fileName
    full_path_output_parquet_file = get_dataset_parquetfile(full_path_src_file)
    if full_path_src_file.endswith('.csv') or full_path_src_file.endswith('.csv.gz'): 
        #is a csv file, need to reformat to parquet
        table = pv.read_csv(full_path_src_file)
        pq.write_table(table, full_path_output_parquet_file)
        logger.info(f"parquet written {full_path_output_parquet_file}")         
        os.remove(full_path_src_file)
        logger.info(f"removed csv file {full_path_src_file}")
    elif full_path_src_file.endswith('.parquet'):
        # dont need to reformat, just move the file
        shutil.move(full_path_src_file, full_path_output_parquet_file)
        logger.info(f"moved file from: {full_path_src_file} to: {full_path_output_parquet_file}")
    else:        
        logger.error(f"Unkown file format extension {full_path_src_file}")        
        return ""
    return full_path_output_parquet_file

def local_to_gcs(bucket_name: str, **kwargs):
    logger = logging.getLogger(kwargs["dag"].dag_id)
    logger.info("local_to_gcs")    
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