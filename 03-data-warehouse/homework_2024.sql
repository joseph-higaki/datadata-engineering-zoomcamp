/* SETUP*/ 

CREATE OR REPLACE EXTERNAL TABLE nyc_taxi.green_tripdata_2022_external
OPTIONS(
  format = 'parquet',
  uris = [
    'gs://01-initial-setup-bucket/green_tripdata_2022*.parquet'
  ]
);

CREATE OR REPLACE TABLE nyc_taxi.green_tripdata_2022 
as 
    SELECT * FROM nyc_taxi.green_tripdata_2022_external;


/* 1. Count */ 
SELECT count(1) from nyc_taxi.green_tripdata_2022_external;


/* 2. Count PULocationIDs */ 
SELECT PULocationID, count(1)
 from nyc_taxi.green_tripdata_2022_external 
 group by PULocationID

 SELECT PULocationID, count(1)
 from nyc_taxi.green_tripdata_2022
 group by PULocationID

SELECT count(distinct PULocationID)
 from nyc_taxi.green_tripdata_2022_external 
 group by PULocationID

 SELECT count(distinct PULocationID)
 from nyc_taxi.green_tripdata_2022
 group by PULocationID


/* 3. Fare amount 0 */ 
SELECT count(1)
 from nyc_taxi.green_tripdata_2022
where  fare_amount = 0
--1622

/* 4 partitioned clusterized tables */

CREATE OR REPLACE TABLE nyc_taxi.green_tripdata_2022_partitioned_clustered
PARTITION BY DATE(lpep_pickup_datetime) 
CLUSTER BY PULocationID AS
SELECT * FROM nyc_taxi.green_tripdata_2022_external;

/* 5 distinct PULocationID between lpep_pickup_datetime
06/01/2022 and 06/30/2022 (inclusive) */

SELECT distinct PULocationID 
 from nyc_taxi.green_tripdata_2022
where DATE(lpep_pickup_datetime) BETWEEN '2022-06-01' and '2022-06-30';

SELECT distinct PULocationID 
 from nyc_taxi.green_tripdata_2022_partitioned_clustered
where DATE(lpep_pickup_datetime) BETWEEN '2022-06-01' and '2022-06-30';
