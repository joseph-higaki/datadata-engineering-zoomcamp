select 
y1.VendorID,
y1.tpep_pickup_datetime,    
  y1.rn as row_number_by_vendor_pickup,
  y1.row_hash_value,
  y1.rn_hash as row_number_by_row_hash_value,
  tpep_dropoff_datetime,
  passenger_count,
  trip_distance,
  RatecodeID,
  store_and_fwd_flag,
  PULocationID,
  DOLocationID,
  payment_type,
  fare_amount,
  extra,
  mta_tax,
  tip_amount,
  tolls_amount,
  improvement_surcharge,
  total_amount,
  congestion_surcharge,
  airport_fee, source_table
from {{ref('stg_yellow_tripdata')}} y1 
where 1=1
-- and y1.rn_hash > 1
and y1.row_hash_value = '9bc3b6d92cb5196cf5b6535c257573bb'
or  y1.tpep_pickup_datetime = '2020-01-06T06:28:00+00:00'
--and y1.tpep_pickup_datetime = 2009-01-01T00:06:19+00:00 
order by  tpep_pickup_datetime, y1.rn, y1.rn_hash, y1.row_hash_value;


