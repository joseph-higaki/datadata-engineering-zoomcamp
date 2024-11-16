# Finding Yellow trip data a primary key

According to the [Data Dictionary](https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf) 

## Creating row_numbers() By
1. Full row value hash
* `row_hash_value` is a hash value of all columns `to_hex(md5())`

To identify duplicate records


<details>
    <summary>
        See Model: <a href="04-analytics-engineering/dbt_cloud/models/raw/raw_fhv_tripdata.sql">raw_fhv_tripdata</a>
    </summary>

```sql
with row_hash as (
    select *,        
    {{ dbt_utils.generate_surrogate_key([            
        'dispatching_base_num',
        'pickup_datetime',
        'dropOff_datetime',
        'PUlocationID',
        'DOlocationID',
        'SR_Flag',
        'Affiliated_base_number'
        ])}} as row_hash_value,            
    from {{ref("raw_fhv_tripdata_all")}} 
),
row_numbered_by_row_hash as (    
    select *,
    row_number() over (
        partition by row_hash_value
    ) as rn_hash
    from row_hash
)
select * 
from row_numbered_by_row_hash
```    
</details>

## Deduplication Strategy
So for deduplication, we can wither do:
1. **Eliminate duplicated rows over `row_hash_value`**


## Counts
```sql
--row_hash_value
with y as (
    select row_hash_value, rn_hash, 
    case rn_hash
        when 1 then 1
        else 0 
    end original_count,
    case rn_hash
        when 1 then 0
        else 1 
    end duplicate_count,    
    from {{ref('raw_fhv_tripdata')}}  
),
original_with_duplicates as (
    select count(1) as original_with_duplicates_count
    from y 
    where row_hash_value in (select row_hash_value from y where rn_hash > 1)
    and  rn_hash = 1 
) 
    select 
        count(1) as total_count,        
        (select sum(original_with_duplicates_count) from original_with_duplicates) as original_with_duplicates_count,        
        sum(original_count) as original_count,
        sum(duplicate_count) as duplicates_count
    from y

```


|label|amount|Explanation|
|-----|------|-----------|
|`total_count`| 43 261 276| Amount of records at fhv trip data 2019            |
|`duplicates_count` <br> 0.23%| 100 931 | Records that are duplicate doing a full row comparison           |
|`original_with_duplicates_count`| 78 613 |  Records that are duplicate but are the remaining record `(row_number() == 1)`. Notice this is less than 100 931 because a single good record could be duplicated more than once         |
|`original_count`|43 160 345| Record count after deleting `duplicates_count`            |