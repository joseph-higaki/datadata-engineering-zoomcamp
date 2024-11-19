with stg_fhv as (
    select * 
    from {{ ref('stg_fhv_tripdata') }}
),
zone as (
    select * from {{ref("dim_zone")}}
),
fhv as (
    select        
        trip_id,
        trip_type,
        row_hash_value, 
        dispatching_base_number,
        pickup_datetime,
        dropoff_datetime,
        pickup_location_id,
        dropoff_location_id,
        shared_ride_chain_flag,
        affiliated_base_number
    from stg_fhv    
),
fhv_with_zones as (
    select fhv.*,
        zpu.zone as pickup_location_zone,
        zpu.borough as pickup_location_borough,
        zdo.zone as dropoff_location_zone,
        zdo.borough as dropoff_location_borough
    from fhv
    left join zone zpu on fhv.pickup_location_id = zpu.location_id
    left join zone zdo on fhv.dropoff_location_id = zdo.location_id
    {% if var('is_test_run', default=true) %}
    limit 100
    {% endif %}
)
select * 
from fhv_with_zones

