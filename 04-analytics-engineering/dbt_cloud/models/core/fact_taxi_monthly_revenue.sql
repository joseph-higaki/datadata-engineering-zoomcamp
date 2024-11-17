with taxi as (
    select * from {{ref('fact_taxi_tripdata')}}
),
zone as (
    select * from {{ref('dim_zone')}}
)
select     
    taxi.pickup_location_id,
    {{dbt.date_trunc('month', 'pickup_datetime')}} as revenue_month,
    taxi.trip_type,
    count(taxi.trip_id) as trip_count,
    sum(fare_amount) as fare_amount,
    sum(extra_amount) as extra_amount,
    sum(mta_tax) as mta_tax,
    sum(tip_amount) as tip_amount,
    sum(tolls_amount) as tolls_amount,
    sum(improvement_surcharge) as improvement_surcharge,
    sum(total_amount) as total_amount,
    sum(congestion_surcharge) as congestion_surcharge,
    sum(airport_fee) as airport_fee,
    sum(ehail_fee) as ehail_fee
from taxi
left join zone on zone.location_id = taxi.pickup_location_id
group by 
    pickup_location_id,
    revenue_month,
    trip_type
order by revenue_month

