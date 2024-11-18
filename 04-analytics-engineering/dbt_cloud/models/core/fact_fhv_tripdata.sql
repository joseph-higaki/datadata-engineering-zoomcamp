with fhv as (
    select * 
    from {{ ref('stg_fhv_tripdata') }}
),
zone as (
    select * from {{ref("dim_zone")}}
),
renamed as (
    select 
       fhv.*,
       zone.zone as pickup_location_zone
    from fhv
    left join zone on fhv.pickup_location_id = zone.location_id
    {% if var('is_test_run', default=true) %}
    limit 100
    {% endif %}
)
select * 
from renamed

