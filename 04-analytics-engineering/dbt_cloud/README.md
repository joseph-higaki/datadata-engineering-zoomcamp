# NYC Taxi 

## Data in buckets
Yellow taxi data - Years 2019 and 2020 (yes)
Green taxi data - Years 2019 and 2020 (yes)
fhv data - Year 2019 (yes)

## Raw

1. Upload each parquet to GCS (airflow) as is
1. Create one external table per month at GBQ (dbt)

###  The problem, too many models (36)
The problem of this is, that I need to create one table per month, so I generated a [script with 36 create tables](../init_external_tables.sql)

And then, I need to generate 36 staging models for the `raw` layer

###  The problem querying external tables from dbt

```bash
Runtime Error Database Error in model raw_yellow_tripdata_2019_01 (models/raw/raw_yellow_tripdata_2019_01.sql) Access Denied: BigQuery BigQuery: Permission denied while globbing file pattern. dbt-service-account-2@de-zoomcamp-jhigaki-course.iam.gserviceaccount.com does not have storage.objects.list access to the Google Cloud Storage bucket. Permission 'storage.objects.list' denied on resource (or it may not exist). 

Please make sure gs://01-initial-setup-bucket/green_tripdata_2019*.parquet is accessible via appropriate IAM roles, e.g. Storage Object Viewer or Storage Object Creator.

Please make sure gs://01-initial-setup-bucket/green_tripdata_2019*.parquet is accessible via appropriate IAM roles, e.g. Storage Object Viewer or Storage Object Creator.
```
Go to GCP IAM / ON the principal edit rolesA
![alt text](../../_resources/04-analytics-engineering/dbt_cloud/README.md/image-1.png)

Add Storage OBject Viewer
![alt text](../../_resources/04-analytics-engineering/dbt_cloud/README.md/image.png)


1. standardize data types
Using the approach of union all accross months with set formulas and casts for all months

I will first list all columns
```sql
with 
source as (    
    {% for item in ['2019_01','2019_02'] %}
        {% set table_name = 'yellow_tripdata_' +  item  + '_external' %}
        select 
            {{ dbt_utils.star(from=source('raw', table_name), quote_identifiers=False) }}          
        from {{ source('raw', table_name) }}
        {% if not loop.last %}
            union all              
        {% endif %}        
    {% endfor %}
)
```

used the regex 
```bash
^(.*),$
{{ dbt.cast("$1", api.Column.translate_type("some_type")) }} as $1
```
to come up with yellow columns

```sql
{{ dbt.cast("VendorID", api.Column.translate_type("int")) }} as VendorID,
{{ dbt.cast("tpep_pickup_datetime", api.Column.translate_type("timestamp")) }} as tpep_pickup_datetime,
...
```
See macro with [yellow columns here](./macros/get_raw_yellow_tripdata_columns.sql)

I will build the raw_yellow_tripdata_all as a materialized table 

## Staging


### Data Cleaning: 
### Deduplication of records, find a key    
Key: **the whole row**

[Analysis here](./finding_yellowtripdata_key.md)

1. default values across months of single service
1. default values across services
1. Valid lookup values

## Core
1. Fact trip
1. Dim Taxi Zones
1. Dim Payment Types?
1. 

