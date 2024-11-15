# dbt Setup

https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/main/04-analytics-engineering

https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/main/04-analytics-engineering/dbt_cloud_setup.md 

https://www.youtube.com/watch?v=J0XCDyKiU64&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=42

## Create specific GCP service Account
- BigQuery Data Editor
- BigQuery Job User
- BigQuery User


dbt Cloud 
Submit credentials.json to dbt cloud:
*dbt Cloud will always access your connection from 52.3.77.232, 3.214.191.130, or 34.233.79.135.*

Test
![alt text](../_resources/04-analytics-engineering/dbt_setup.md/image.png)

Not sure what it did, as there isn't a dbt_jhigaki dataset in my BigQuery project

I granted access to githubrepo through the dialogs:
![alt text](../_resources/04-analytics-engineering/dbt_setup.md/image-1.png)

- [ ] I wasn't requred to create another SSH key. **SHould I?**


## Issues

### development Dataset default location

Models created in dbt run in `dbt_jhigaki` dataset
WHen tried to run the whole project
the example model created 
`dbt_jhigaki` dataset
But it created it the US

![alt text](../_resources/04-analytics-engineering/dbt_setup.md/image-2.png)

WHen I build my staging model it says

```bash
13:26:26 Database Error in model stg_green_tripdata (models/staging/stg_green_tripdata.sql)
  Not found: Dataset de-zoomcamp-jhigaki-course:dbt_jhigaki was not found in location europe-southwest1
  compiled code at target/run/nyc_taxi/models/staging/stg_green_tripdata.sql
13:26:26 2 of 7 ERROR creating sql view model dbt_jhigaki.stg_green_tripdata ............ [ERROR in 0.38s]
13:26:26 Finished running node model.nyc_taxi.stg_green_tripdata
13:26:31   Database Error in model stg_green_tripdata (models/staging/stg_green_tripdata.sql)
  Not found: Dataset de-zoomcamp-jhigaki-course:dbt_jhigaki was not found in location europe-southwest1
  compiled code at target/run/nyc_taxi/models/staging/stg_green_tripdata.sql
```

I'm not sure where did I tell dbt to look for `europe-southwest1`

But I did find an optional setting in dbt / connections / BigQuery
where to set the dataset connection

![alt text](../_resources/04-analytics-engineering/dbt_setup.md/image-3.png)

Changed it to `europe-southwest1`

Now it works 

### green taxi column data types (again, last time was ith yellow)

`Error while reading table: de-zoomcamp-jhigaki-course.nyc_taxi.green_tripdata, error message: Parquet column 'ehail_fee' has type DOUBLE which does not match the target cpp_type INT64. File: gs://01-initial-setup-bucket/green_tripdata_2019-03.parquet`

so, to work around it, instead of having my dbt model query from an `external` table like this:
```sql
 external table nyc_taxi.green_tripdata
Source URI(s)
gs://01-initial-setup-bucket/green_tripdata_2019*.parquet
gs://01-initial-setup-bucket/green_tripdata_2020*.parquet
```
I will use a materialized table:

```sql
CREATE OR REPLACE TABLE nyc_taxi.green_tripdata
as 
  select * except(ehail_fee) from nyc_taxi.green_tripdata_external
```



