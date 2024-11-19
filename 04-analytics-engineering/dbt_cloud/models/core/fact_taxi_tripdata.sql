with yellow as (
    select * 
    from {{ ref('stg_yellow_tripdata') }}
),
green as (
    select * 
    from {{ ref('stg_green_tripdata') }}
),
zone as (
    select *
    from {{ref('dim_zone')}}
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

),
unioned_with_zones as (
    select unioned.*,
        zpu.zone as pickup_location_zone,
        zpu.borough as pickup_location_borough,
        zdo.zone as dropoff_location_zone,
        zdo.borough as dropoff_location_borough
    from unioned
    left join zone zpu on unioned.pickup_location_id = zpu.location_id
    left join zone zdo on unioned.dropoff_location_id = zdo.location_id
    {% if var('is_test_run', default=true) %}
    limit 100
    {% endif %}
)
select * from unioned_with_zones
