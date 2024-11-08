CREATE OR REPLACE EXTERNAL TABLE nyc_taxi.yellow_tripdata
OPTIONS(
  format = 'parquet',
  uris = [
    'gs://01-initial-setup-bucket/yellow_tripdata_2019*.parquet',
    'gs://01-initial-setup-bucket/yellow_tripdata_2020*.parquet'
  ]
);

CREATE OR REPLACE EXTERNAL TABLE nyc_taxi.green_tripdata
OPTIONS(
  format = 'parquet',
  uris = [
    'gs://01-initial-setup-bucket/green_tripdata_2019*.parquet',
    'gs://01-initial-setup-bucket/green_tripdata_2020*.parquet'
  ]
);

CREATE OR REPLACE EXTERNAL TABLE nyc_taxi.fhv_tripdata
OPTIONS(
  format = 'parquet',
  uris = [
    'gs://01-initial-setup-bucket/fhv_tripdata_2019*.parquet',
    'gs://01-initial-setup-bucket/fhv_tripdata_2020*.parquet'
  ]
)


CREATE OR REPLACE EXTERNAL TABLE nyc_taxi.taxi_zone_lookup
OPTIONS(
  format = 'parquet',
  uris = [
    'gs://01-initial-setup-bucket/taxi_zone_lookup_2020-12.parquet'
  ]
)

