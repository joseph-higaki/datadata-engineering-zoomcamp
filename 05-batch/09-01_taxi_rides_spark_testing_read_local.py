
import pyspark
from pyspark.sql import SparkSession
from pyspark.conf import SparkConf
from pyspark.sql import functions as F

#.setMaster('spark://spark-medium.europe-southwest1-a.c.de-zoomcamp-jhigaki-course.internal:7077')\

conf = SparkConf()
    
spark = SparkSession.builder \
    .config(conf=conf)\
    .getOrCreate()

df_yellow_metrics = spark.read\
    .parquet(f'tmp-data/pq/reports/yellow/*')

print(f"***** the data set count: {df_yellow_metrics.count()}")

