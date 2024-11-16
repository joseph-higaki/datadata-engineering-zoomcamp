select 
LocationID as location_id,
Borough as borough,
`Zone` as zone,
case service_zone 
    when 'Boro Zone' then 'Green Zone'
    else service_zone 
end as service_zone 
from {{ref("raw_taxi_zone_lookup")}} 