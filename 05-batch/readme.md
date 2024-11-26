# Batch - SPark

## Install local Spark
 [Install Spark / PySpark](install_local_pyspark.md#install-spark-on-my-dev-container) at the dev containr

And testing if [it works](./testing_dev_container_spark.ipynb)

## Installed GCP VM Spark
Install Spark [at GCP CLoud](install_local_pyspark.md#install-spark-on-gcp-cloud)

Testing [here](./testing_gcp_vm_spark.ipynb)

## 01 Jupyter Notebook Spark 
Running a cloud VM: `de-zoomcamp-jhigaki-course` `spark-instance` on `europe-southwest1-a`
Installed:
* [Java ](./install_local_pyspark.md#install-java-1)  openjdk-11.0.2
* [anaconda](./install_local_pyspark.md#install-python-conda)  Anaconda3-2024.10-1-Linux-x86_64
* Python 3.11 
* [Spark](./install_local_pyspark.md#install-spark-1) 3.4.4

### [01 Taxi Rides Spark Notebook](./01_taxy_rides_spark.ipynb)
Based on [lecture](https://www.youtube.com/watch?v=ti3aC1m3rE8&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=55)
* Reading local parquet
* Eexecuting tasks
* saving partitioned parquet files to disk

## 02 [Read and Repartition](./02_taxi_rides_spark.ipynb)
Based on lectures [5.3.3](https://www.youtube.com/watch?v=CI3P4tAtru4&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=56) and [5.3.4](https://www.youtube.com/watch?v=uAlp2VuZZPY&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=57)

* download parquet yellow, green and fhv 2020 from command line into `raw` flat 
`chmod +x download_nyc_tripdata.sh`
`chmod +x download_2019_2020_all.sh`
`./download_2019_2020_all.sh`


* Reading local parquet
* write as parquet files in folders as `raw/data-lake-format/<service-type>/<year>/<month>` 

## 03 [Transformations and SQL](./03_taxi_rides_spark.ipynb)
BAsed on LEctures [5.3.4](https://www.youtube.com/watch?v=uAlp2VuZZPY&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=57)
and course files 
* [04_pyspark](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/main/05-batch/code/04_pyspark.ipynb)
* [05_taxi_schema](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/main/05-batch/code/05_taxi_schema.ipynb)
* [06_spark_sql](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/main/05-batch/code/06_spark_sql.ipynb)

* Union files (green & yelllow)
* add service type column
* udf spark function
* execute sql

## 04 
BAsed on LEctures [5.4.1](https://www.youtube.com/watch?v=68CipcZt7ZA&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=58)
[5.4.2](https://www.youtube.com/watch?v=9qrDsY_2COo&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=59)
GROUP BY 
group by sum trip count, passenger count
group by in spark, 
join by something big
- trips in the same hour window, zone, sum amount
    - Be consious about re-shuffling
    - grouping and aggregating are done distributed
        ![alt text](../_resources/05-batch/readme.md/image.png)
    - See the difference between with and WITHOUT order by
- Generate revenue report by hour, service type
- Write to parquet
- BE aware of file amount and fiel size
- Re-shuffle as little as possible 
- after 


## 05 
- Join service type side to side
- per passenger revenue
    

