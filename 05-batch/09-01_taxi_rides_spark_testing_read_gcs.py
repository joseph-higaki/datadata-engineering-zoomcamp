
import pyspark
from pyspark.sql import SparkSession
from pyspark.conf import SparkConf
from pyspark.sql import functions as F

#.setMaster('spark://spark-medium.europe-southwest1-a.c.de-zoomcamp-jhigaki-course.internal:7077')\
#.set("spark.jars", "/home/spark_jhigaki_gcp/spark/lib/gcs-connector-3.0.4.jar")\

conf = SparkConf()\
    .set("spark.hadoop.fs.gs.impl", "com.google.cloud.hadoop.fs.gcs.GoogleHadoopFileSystem")\
    .set("spark.hadoop.fs.AbstractFileSystem.gs.impl",  "com.google.cloud.hadoop.fs.gcs.GoogleHadoopFS")
    
spark = SparkSession.builder \
    .config(conf=conf)\
    .getOrCreate()

print(f"****************THIS IS THE WEB UI *****  {spark.sparkContext.uiWebUrl}")



print("\n****************** SparkContext Configuration: **********************\n")
for item in spark.sparkContext.getConf().getAll():
    print(item)

df_green = spark.read\
    .parquet(f'gs://de-zoomcamp-jhigaki-nyc-taxi/pq/green/*/*')

print(f"***** the data set count: {df_green.count()}")

