# NYC orchestration

Downloaded the dataset DONE
format it to parquet DONE
pending: upload DONE
pending: upload to GCS -> without parquet disc - PENDING
![alt text](../../_resources/02-workflow-orchestration/airflow_nyc/readme.md/image.png)

docker compose -f airflow_nyc_docker-compose.yaml down

## DAG with local storage

![alt text](../../_resources/02-workflow-orchestration/airflow_nyc/readme.md/image-1.png)

* Download Dataset: Downloads file and stores csv at Schedulers: `opt/airflowraw/data` folder 
* Format to Parquet: Uses the same folder `opt/airflowraw/data`, re-formats to parquet and deletes csv
* Local to GCS: Loads from  folder `opt/airflowraw/data` uploads to specified bucket, delets parquet
* Upload to big query

## DAG Task XCOM First simple storage
Exchange file name between tasks

```python
    def format_to_parquet(full_path_src_file):
        ...    
        full_path_output_parquet_file = dataset_parquetfile(full_path_src_file)
        ...
        return full_path_output_parquet_file
```
XCom of task has a `return_value`:
![alt text](../../_resources/02-workflow-orchestration/airflow_nyc/readme.md/image-2.png)



## DAG Task XCOM Blob Backend
exchange fillename, use GCS blob provider