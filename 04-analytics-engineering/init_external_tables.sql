/*
Manually create external tables that read from bucket
** Yellow taxi data - Years 2019 and 2020 (yes)
** Green taxi data - Years 2019 and 2020 (yes)
** fhv data - Year 2019 (yes)

so that data cleansing happens over SQL in dbt
*/
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_01_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-01.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_01_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-01.parquet']);




-- Green
-- 2019
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_01_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-01.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_02_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-02.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_03_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-03.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_04_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-04.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_05_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-05.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_06_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-06.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_07_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-07.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_08_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-08.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_09_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-09.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_10_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-10.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_11_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-11.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2019_12_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2019-12.parquet']);

-- 2020
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_01_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-01.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_02_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-02.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_03_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-03.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_04_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-04.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_05_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-05.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_06_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-06.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_07_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-07.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_08_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-08.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_09_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-09.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_10_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-10.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_11_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-11.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.green_tripdata_2020_12_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/green_tripdata_2020-12.parquet']);

--yellow
-- 2019
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_01_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-01.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_02_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-02.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_03_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-03.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_04_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-04.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_05_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-05.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_06_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-06.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_07_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-07.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_08_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-08.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_09_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-09.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_10_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-10.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_11_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-11.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2019_12_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2019-12.parquet']);

--2020
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_01_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-01.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_02_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-02.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_03_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-03.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_04_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-04.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_05_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-05.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_06_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-06.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_07_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-07.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_08_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-08.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_09_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-09.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_10_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-10.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_11_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-11.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.yellow_tripdata_2020_12_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/yellow_tripdata_2020-12.parquet']);

--fhv
-- 2019
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_01_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-01.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_02_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-02.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_03_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-03.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_04_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-04.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_05_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-05.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_06_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-06.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_07_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-07.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_08_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-08.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_09_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-09.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_10_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-10.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_11_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-11.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2019_12_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2019-12.parquet']);

/*
-- 2020
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_01_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-01.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_02_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-02.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_03_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-03.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_04_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-04.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_05_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-05.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_06_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-06.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_07_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-07.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_08_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-08.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_09_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-09.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_10_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-10.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_11_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-11.parquet']);
CREATE OR REPLACE EXTERNAL TABLE nyc_taxi_raw.fhv_tripdata_2020_12_external OPTIONS( format = 'parquet', uris = ['gs://01-initial-setup-bucket/fhv_tripdata_2020-12.parquet']);

*/