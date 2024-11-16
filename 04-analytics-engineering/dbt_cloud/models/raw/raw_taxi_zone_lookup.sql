with a as (
    select *
    from {{source('raw','taxi_zone_lookup_external')}} 
)
select * from a