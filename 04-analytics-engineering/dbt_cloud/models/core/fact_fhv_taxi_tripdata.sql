with fhv as (
    select * 
    from {{ ref('fact_fhv_tripdata') }}
),
taxi as (
    select * from {{ref("fact_taxi_tripdata")}}
),
with unioned as (
    select 
        trip_id,
        trip_type,
        pickup_datetime,
        dropoff_datetime,
        pickup_location_id,
        pickup_location_zone,
        pickup_location_borough,
        dropoff_location_id,
        dropoff_location_zone,
        dropoff_location_borough
    from fhv
    union all 
    select 
        trip_id,
        trip_type,
        pickup_datetime,
        dropoff_datetime,
        pickup_location_id,
        pickup_location_zone,
        pickup_location_borough,
        dropoff_location_id,
        dropoff_location_zone,
        dropoff_location_borough
    from taxi
    {% if var('is_test_run', default=true) %}
    limit 100
    {% endif %}
)
select * from unioned

