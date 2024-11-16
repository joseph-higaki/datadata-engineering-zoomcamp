with source as (
    select * from {{ ref('raw_yellow_tripdata') }}
),
renamed_dedup as (
    select 
        'yellow' as trip_type,
        row_hash_value,   
        VendorID as vendor_id,
        tpep_pickup_datetime as pickup_datetime,
        tpep_dropoff_datetime as dropoff_datetime,
        passenger_count as passenger_count,
        trip_distance as trip_distance,
        RatecodeID as rate_code_id,
        store_and_fwd_flag as store_and_fwd_flag,
        PULocationID as pickup_location_id,
        DOLocationID as dropoff_location_id,
        payment_type as payment_type_id,
        fare_amount as fare_amount,
        extra as extra_amount,
        mta_tax as mta_tax,
        tip_amount as tip_amount,
        tolls_amount as tolls_amount,
        improvement_surcharge as improvement_surcharge,
        total_amount as total_amount,
        congestion_surcharge as congestion_surcharge,
        airport_fee as airport_fee
    from source
    where rn_hash = 1     
),
added_trip_id as (
    select 
    {{ dbt_utils.generate_surrogate_key(['trip_type', 'row_hash_value']) }} as trip_id,
    *
    from renamed_dedup
    {% if var('is_test_run', default=true) %}
    limit 100
    {% endif %}
)
select * 
from added_trip_id