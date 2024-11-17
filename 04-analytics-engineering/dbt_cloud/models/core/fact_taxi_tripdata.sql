with yellow as (
    select * 
    from {{ ref('stg_yellow_tripdata') }}
),
green as (
    select * 
    from {{ ref('stg_green_tripdata') }}
),
unioned as (
    select 
        trip_id,
        trip_type,
        vendor_id,
        pickup_datetime,
        dropoff_datetime,
        passenger_count,
        trip_distance,
        rate_code_id,
        store_and_fwd_flag,
        pickup_location_id,
        dropoff_location_id,
        payment_type_id,
        fare_amount,
        extra_amount,
        mta_tax,
        tip_amount,
        tolls_amount,
        improvement_surcharge,
        total_amount,
        congestion_surcharge,
        airport_fee,
        null as ehail_fee,
        null as trip_hail_type
    from yellow
    union all 
    select 
        trip_id,
        trip_type,
        vendor_id,
        pickup_datetime,
        dropoff_datetime,
        passenger_count,
        trip_distance,
        rate_code_id,
        store_and_fwd_flag,
        pickup_location_id,
        dropoff_location_id,
        payment_type_id,
        fare_amount,
        extra_amount,
        mta_tax,
        tip_amount,
        tolls_amount,
        improvement_surcharge,
        total_amount,
        congestion_surcharge,
        null as airport_fee,
        ehail_fee,
        trip_hail_type
    from green
    {% if var('is_test_run', default=true) %}
    limit 100
    {% endif %}
)
select * from unioned
