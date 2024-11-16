# Finding Yellow trip data a primary key

According to the [Data Dictionary](https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf) VendorID has a very low cardinality 
* 1= Creative Mobile Technologies, LLC
* 2= VeriFone Inc

It relates to the technology provider for the 
* TPEP Taxicab Passenger Enhancement Program
* LPEP Livery Passenger Enhancement Program
not an actual identification of the driver

## Finding duplicate values
After wrangling the yellow trip data, I ran into multiple records duplication, regardless of the grouping.


## Creating row_numbers() By
1. VendorId, tpep_pickup_datetime
2. Full row value hash
* `row_hash_value` is a hash value of all columns `to_hex(md5())`

To identify duplicate records


<details>
    <summary>
        See Model: <a href="04-analytics-engineering/dbt_cloud/models/raw/yellow_tripdata_rownumber_hash.sql">yellow_tripdata_rownumber_hash</a>
    </summary>

```sql
    with row_numbered_by_row_hash as (
        with row_numbered as (
            select *,        
            {{ dbt_utils.generate_surrogate_key([            
                'VendorID',
                'tpep_pickup_datetime',
                'tpep_dropoff_datetime',
                'passenger_count',
                'trip_distance',
                'RatecodeID',
                'store_and_fwd_flag',
                'PULocationID',
                'DOLocationID',
                'payment_type',
                'fare_amount',
                'extra',
                'mta_tax',
                'tip_amount',
                'tolls_amount',
                'improvement_surcharge',
                'total_amount',
                'congestion_surcharge',
                'airport_fee'
                ])}} as row_hash_value,
            row_number() 
                over ( 
                    partition by  y.VendorID, y.tpep_pickup_datetime 
                    order by y.tpep_pickup_datetime
                ) as rn    
            from {{ref("raw_yellow_tripdata_all")}} y
        )
        select *,
        row_number() over (
            partition by row_hash_value
        ) as rn_hash
        from row_numbered
    )
    select * from row_numbered_by_row_hash
```    
</details>

## Example Pickup Time
Let's use Pickup time: `2020-01-06T06:28:00+00:00`

We can see that there are multiple records under the categories

### 1.  Having same `VendorID` and `tpep_pickup_datetime `

Which can be very common as it wouldn't be rare that multiple drivers start a trip at the same time using the same tech provider

Example:

|VendorID|tpep_pickup_datetime     |row_number_by_vendor_pickup|row_hash_value|row_number_by_row_hash_value|tpep_dropoff_datetime|passenger_count|trip_distance|RatecodeID|store_and_fwd_flag|PULocationID|DOLocationID|payment_type|fare_amount|extra|mta_tax|tip_amount|tolls_amount|improvement_surcharge|total_amount           |congestion_surcharge            |airport_fee|source_table|
|--------|-------------------------|---------------------------|--------------|----------------------------|---------------------|---------------|-------------|----------|------------------|------------|------------|------------|-----------|-----|-------|----------|------------|---------------------|-----------------------|--------------------------------|-----------|------------|
|$\color{red}{\textsf{2}}$       |$\color{red}{\textsf{2020-01-06T06:28:00+00:00}}$|1                          |74a09c99f42d6f2c95af6f7dfc6cbfca|1                           |2020-01-06T06:31:09+00:00|1              |0.7          |1         |N                 |142         |230         |1           |4.5        |0.0  |0.5    |1.56      |0.0         |0.3                  |9.36                   |2.5                             |           |yellow_tripdata_2020_01|
|$\color{blue}{\textsf{1}}$       |$\color{blue}{\textsf{2020-01-06T06:28:00+00:00}}$|1                          |79a63061a644ff6dcbea6fd0fb42591f|1                           |2020-01-06T06:47:02+00:00|1              |8.3          |1         |N                 |262         |138         |1           |25.0       |2.5  |0.5    |6.85      |6.12        |0.3                  |41.27                  |2.5                             |           |yellow_tripdata_2020_01|
|$\color{red}{\textsf{2}}$       |$\color{red}{\textsf{2020-01-06T06:28:00+00:00}}$|2                          |79838f78a4edae07dd129c6f5f96f321|1                           |2020-01-06T06:34:55+00:00|1              |1.11         |1         |N                 |48          |161         |1           |6.5        |0.0  |0.5    |0.98      |0.0         |0.3                  |10.78                  |2.5                             |           |yellow_tripdata_2020_01|
|$\color{blue}{\textsf{1}}$       |$\color{blue}{\textsf{2020-01-06T06:28:00+00:00}}$|2                          |da0a646c48dbe14c5bd5ad1e55c3fafd|1                           |2020-01-06T06:33:07+00:00|1              |0.8          |1         |N                 |229         |161         |1           |5.5        |2.5  |0.5    |0.7       |0.0         |0.3                  |9.5                    |2.5                             |           |yellow_tripdata_2020_01|
|2       |2020-01-06T06:28:00+00:00|3                          |9bc3b6d92cb5196cf5b6535c257573bb|1                           |2020-01-06T06:47:00+00:00|               |6.42         |          |                  |78          |74          |0           |18.19      |2.75 |0.5    |0.0       |6.12        |0.3                  |27.86                  |                                |           |yellow_tripdata_2020_01|
|2       |2020-01-06T06:28:00+00:00|4                          |9bc3b6d92cb5196cf5b6535c257573bb|2                           |2020-01-06T06:47:00+00:00|               |6.42         |          |                  |78          |74          |0           |18.19      |2.75 |0.5    |0.0       |6.12        |0.3                  |27.86                  |                                |           |yellow_tripdata_2020_01|

### 2. Having the same `row_hash_value`

Which may be less likely for two valid records to be exactly the same

Example: 
|VendorID|tpep_pickup_datetime     |row_number_by_vendor_pickup|row_hash_value|row_number_by_row_hash_value|tpep_dropoff_datetime|passenger_count|trip_distance|RatecodeID|store_and_fwd_flag|PULocationID|DOLocationID|payment_type|fare_amount|extra|mta_tax|tip_amount|tolls_amount|improvement_surcharge|total_amount           |congestion_surcharge            |airport_fee|source_table|
|--------|-------------------------|---------------------------|--------------|----------------------------|---------------------|---------------|-------------|----------|------------------|------------|------------|------------|-----------|-----|-------|----------|------------|---------------------|-----------------------|--------------------------------|-----------|------------|
|2       |2020-01-06T06:28:00+00:00|1                          |74a09c99f42d6f2c95af6f7dfc6cbfca|1                           |2020-01-06T06:31:09+00:00|1              |0.7          |1         |N                 |142         |230         |1           |4.5        |0.0  |0.5    |1.56      |0.0         |0.3                  |9.36                   |2.5                             |           |yellow_tripdata_2020_01|
|1       |2020-01-06T06:28:00+00:00|1                          |79a63061a644ff6dcbea6fd0fb42591f|1                           |2020-01-06T06:47:02+00:00|1              |8.3          |1         |N                 |262         |138         |1           |25.0       |2.5  |0.5    |6.85      |6.12        |0.3                  |41.27                  |2.5                             |           |yellow_tripdata_2020_01|
|2       |2020-01-06T06:28:00+00:00|2                          |79838f78a4edae07dd129c6f5f96f321|1                           |2020-01-06T06:34:55+00:00|1              |1.11         |1         |N                 |48          |161         |1           |6.5        |0.0  |0.5    |0.98      |0.0         |0.3                  |10.78                  |2.5                             |           |yellow_tripdata_2020_01|
|1       |2020-01-06T06:28:00+00:00|2                          |da0a646c48dbe14c5bd5ad1e55c3fafd|1                           |2020-01-06T06:33:07+00:00|1              |0.8          |1         |N                 |229         |161         |1           |5.5        |2.5  |0.5    |0.7       |0.0         |0.3                  |9.5                    |2.5                             |           |yellow_tripdata_2020_01|
|2       |2020-01-06T06:28:00+00:00|3                          |$\color{red}{\textsf{9bc3b6d92cb5196cf5b6535c257573bb}}$|1                           |2020-01-06T06:47:00+00:00|               |6.42         |          |                  |78          |74          |0           |18.19      |2.75 |0.5    |0.0       |6.12        |0.3                  |27.86                  |                                |           |yellow_tripdata_2020_01|
|2       |2020-01-06T06:28:00+00:00|4                          |$\color{red}{\textsf{9bc3b6d92cb5196cf5b6535c257573bb}}$|2                           |2020-01-06T06:47:00+00:00|               |6.42         |          |                  |78          |74          |0           |18.19      |2.75 |0.5    |0.0       |6.12        |0.3                  |27.86                  |                                |           |yellow_tripdata_2020_01|



## Deduplication Strategy
So for deduplication, we can wither do:
1. Eliminate duplicated rows over `row_hash_value`
2. Nothing and generate a surrogate key with `row_hash_value` + `row_number_by_row_hash_value`

## Counts
|label|amount|Explanation|
|-----|------|-----------|
|`total_count`| 109 247 536| Amount of records at yellow trip data 2019- 2020            |
|`duplicates_count`|13 000 | Records that are duplicate doing a full row comparison           |
|`original_with_duplicates_count`|12 957 |  Records that are duplicate but are the remaining record `(row_number() == 1)`. Notice this is less than 13 00 because a single good record could be duplicated more than once         |
|`original_count`|109 234 536| Record count after deleting `duplicates_count`            |
