
import pyspark
from pyspark.sql import SparkSession
from pyspark.conf import SparkConf
from pyspark.sql import functions as F

#.setMaster('spark://spark-medium.europe-southwest1-a.c.de-zoomcamp-jhigaki-course.internal:7077')\

conf = SparkConf() \
    .set("spark.hadoop.fs.gs.impl", "com.google.cloud.hadoop.fs.gcs.GoogleHadoopFileSystem")
    
spark = SparkSession.builder \
    .config(conf=conf)\
    .getOrCreate()

print(f"****************THIS IS THE WEB UI *****  {spark.sparkContext.uiWebUrl}")

df_green = spark.read\
    .parquet(f'gs://de-zoomcamp-jhigaki-nyc-taxi/pq/green/*/*')

df_yellow = spark.read\
    .parquet(f'gs://de-zoomcamp-jhigaki-nyc-taxi/pq/yellow/*/*')

y_g_columns = ['VendorID',\
                'pickup_datetime',\
                'dropoff_datetime',\
                'passenger_count',\
                'PULocationID',\
                'DOLocationID',\
                'total_amount']

df_yellow_transformed = df_yellow\
    .withColumnRenamed('tpep_pickup_datetime', 'pickup_datetime')\
    .withColumnRenamed('tpep_dropoff_datetime', 'dropoff_datetime')\
    .select(y_g_columns)

df_green_transformed = df_green\
    .withColumnRenamed('lpep_pickup_datetime', 'pickup_datetime')\
    .withColumnRenamed('lpep_dropoff_datetime', 'dropoff_datetime')\
    .select(y_g_columns)

df_yg = df_yellow_transformed\
        .withColumn('service_type',F.lit('yellow') )\
        .unionAll(\
                df_green_transformed \
                    .withColumn('service_type', F.lit('green'))
        )

df_yg.createOrReplaceTempView('y_g_tripdata')

df_metrics = spark.sql("""
    SELECT
        service_type,
        date_trunc('month', pickup_datetime) AS revenue_month, 
        SUM(total_amount) AS total_amount,
        SUM(passenger_count) as passenger_count,
        COUNT(1) as trip_count
    FROM
        y_g_tripdata
    WHERE 
        year(pickup_datetime) in (2019, 2020)
    GROUP BY 
        service_type, revenue_month
    ORDER BY 
        revenue_month, service_type
    """)


df_metrics\
    .write.mode("overwrite").parquet('gs://de-zoomcamp-jhigaki-nyc-taxi/pq/y_g_tripdata/y-g-metrics-by month/')
