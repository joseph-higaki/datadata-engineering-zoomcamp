with source as (
    select * from {{ref('stg_taxi_zone_lookup')}}
)
select * from source