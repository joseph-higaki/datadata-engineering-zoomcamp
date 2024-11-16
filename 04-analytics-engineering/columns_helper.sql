{{ dbt.cast("VendorID", api.Column.translate_type("some_type")) }} as VendorID
{{ dbt.cast("tpep_pickup_datetime", api.Column.translate_type("some_type")) }} as tpep_pickup_datetime
{{ dbt.cast("tpep_dropoff_datetime", api.Column.translate_type("some_type")) }} as tpep_dropoff_datetime
{{ dbt.cast("passenger_count", api.Column.translate_type("some_type")) }} as passenger_count
{{ dbt.cast("trip_distance", api.Column.translate_type("some_type")) }} as trip_distance
{{ dbt.cast("RatecodeID", api.Column.translate_type("some_type")) }} as RatecodeID
{{ dbt.cast("store_and_fwd_flag", api.Column.translate_type("some_type")) }} as store_and_fwd_flag
{{ dbt.cast("PULocationID", api.Column.translate_type("some_type")) }} as PULocationID
{{ dbt.cast("DOLocationID", api.Column.translate_type("some_type")) }} as DOLocationID
{{ dbt.cast("payment_type", api.Column.translate_type("some_type")) }} as payment_type
{{ dbt.cast("fare_amount", api.Column.translate_type("some_type")) }} as fare_amount
{{ dbt.cast("extra", api.Column.translate_type("some_type")) }} as extra
{{ dbt.cast("mta_tax", api.Column.translate_type("some_type")) }} as mta_tax
{{ dbt.cast("tip_amount", api.Column.translate_type("some_type")) }} as tip_amount
{{ dbt.cast("tolls_amount", api.Column.translate_type("some_type")) }} as tolls_amount
{{ dbt.cast("improvement_surcharge", api.Column.translate_type("some_type")) }} as improvement_surcharge
{{ dbt.cast("total_amount", api.Column.translate_type("some_type")) }} as total_amount
{{ dbt.cast("congestion_surcharge", api.Column.translate_type("some_type")) }} as congestion_surcharge
airport_fee


{{ dbt.cast("{{ dbt.cast("VendorID", api.Column.translate_type("numeric")) }} as VendorID", api.Column.translate_type("some_type")) }} as {{ dbt.cast("VendorID", api.Column.translate_type("numeric")) }} as VendorID

/*
https://docs.getdbt.com/reference/dbt-jinja-functions/cross-database-macros
https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf 
 */


{{ dbt.cast("VendorID", api.Column.translate_type("some_type")) }} as VendorID
{{ dbt.cast("tpep_pickup_datetime", api.Column.translate_type("some_type")) }} as tpep_pickup_datetime
{{ dbt.cast("tpep_dropoff_datetime", api.Column.translate_type("some_type")) }} as tpep_dropoff_datetime
{{ dbt.cast("passenger_count", api.Column.translate_type("some_type")) }} as passenger_count
{{ dbt.cast("trip_distance", api.Column.translate_type("some_type")) }} as trip_distance
{{ dbt.cast("RatecodeID", api.Column.translate_type("some_type")) }} as RatecodeID
{{ dbt.cast("store_and_fwd_flag", api.Column.translate_type("some_type")) }} as store_and_fwd_flag
{{ dbt.cast("PULocationID", api.Column.translate_type("some_type")) }} as PULocationID
{{ dbt.cast("DOLocationID", api.Column.translate_type("some_type")) }} as DOLocationID
{{ dbt.cast("payment_type", api.Column.translate_type("some_type")) }} as payment_type
{{ dbt.cast("fare_amount", api.Column.translate_type("some_type")) }} as fare_amount
{{ dbt.cast("extra", api.Column.translate_type("some_type")) }} as extra
{{ dbt.cast("mta_tax", api.Column.translate_type("some_type")) }} as mta_tax
{{ dbt.cast("tip_amount", api.Column.translate_type("some_type")) }} as tip_amount
{{ dbt.cast("tolls_amount", api.Column.translate_type("some_type")) }} as tolls_amount
{{ dbt.cast("improvement_surcharge", api.Column.translate_type("some_type")) }} as improvement_surcharge
{{ dbt.cast("total_amount", api.Column.translate_type("some_type")) }} as total_amount
{{ dbt.cast("congestion_surcharge", api.Column.translate_type("some_type")) }} as congestion_surcharge
airport_fee


^(.*),$
{{ dbt.cast("$1", api.Column.translate_type("some_type")) }} as $1

    {{ dbt.cast("dispatching_base_num", api.Column.translate_type("string")) }} as dispatching_base_num,
    {{ dbt.cast("pickup_datetime", api.Column.translate_type("timestamp")) }} as pickup_datetime,
    {{ dbt.cast("dropOff_datetime", api.Column.translate_type("timestamp")) }} as dropOff_datetime,
    {{ dbt.cast("PUlocationID", api.Column.translate_type("int")) }} as PUlocationID,
    {{ dbt.cast("DOlocationID", api.Column.translate_type("int")) }} as DOlocationID,
    {{ dbt.cast("SR_Flag", api.Column.translate_type("int")) }} as SR_Flag,
    {{ dbt.cast("Affiliated_base_number", api.Column.translate_type("string")) }} as Affiliated_base_number

'dispatching_base_num'
'pickup_datetime'
'dropOff_datetime'
'PUlocationID'
'DOlocationID'
'SR_Flag'
'Affiliated_base_number'