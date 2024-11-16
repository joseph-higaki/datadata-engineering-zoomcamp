with source as (
    select * from {{ ref('raw_fhv_tripdata') }}    
),
renamed_dedup as (
    select
        'fhv' as trip_type,
        row_hash_value, 
        dispatching_base_num as dispatching_base_number,
        pickup_datetime,
        dropOff_datetime as dropoff_datetime,
        PUlocationID as pickup_location_id,
        DOlocationID as dropoff_location_id,
        SR_Flag as shared_ride_chain_flag,
        Affiliated_base_number as affiliated_base_number
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