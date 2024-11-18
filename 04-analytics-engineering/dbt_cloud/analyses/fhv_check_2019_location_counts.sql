
select count(1)
from `dbt_jhigaki.stg_fhv_tripdata`
where 1=1
-- and date(pickup_datetime) between '2019-01-01' and '2019-12-31' 
and pickup_location_id in ( select location_id from `dbt_jhigaki.stg_taxi_zone_lookup`)
and dropoff_location_id in ( select location_id from `dbt_jhigaki.stg_taxi_zone_lookup`)
