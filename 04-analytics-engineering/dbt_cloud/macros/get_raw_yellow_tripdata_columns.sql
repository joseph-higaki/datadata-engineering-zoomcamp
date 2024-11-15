{#
    THis macro
#}
{% macro get_raw_yellow_tripdata_columns() -%}
    {{ dbt.cast("VendorID", api.Column.translate_type("int")) }} as VendorID,
    {{ dbt.cast("tpep_pickup_datetime", api.Column.translate_type("timestamp")) }} as tpep_pickup_datetime,
    {{ dbt.cast("tpep_dropoff_datetime", api.Column.translate_type("timestamp")) }} as tpep_dropoff_datetime,
    {{ dbt.cast("passenger_count", api.Column.translate_type("int")) }} as passenger_count,
    {{ dbt.cast("trip_distance", api.Column.translate_type("numeric")) }} as trip_distance,
    {{ dbt.cast("RatecodeID", api.Column.translate_type("int")) }} as RatecodeID,
    {{ dbt.cast("store_and_fwd_flag", api.Column.translate_type("string")) }} as store_and_fwd_flag,
    {{ dbt.cast("PULocationID", api.Column.translate_type("int")) }} as PULocationID,
    {{ dbt.cast("DOLocationID", api.Column.translate_type("int")) }} as DOLocationID,
    {{ dbt.cast("payment_type", api.Column.translate_type("int")) }} as payment_type,
    {{ dbt.cast("fare_amount", api.Column.translate_type("numeric")) }} as fare_amount,
    {{ dbt.cast("extra", api.Column.translate_type("numeric")) }} as extra,
    {{ dbt.cast("mta_tax", api.Column.translate_type("numeric")) }} as mta_tax,
    {{ dbt.cast("tip_amount", api.Column.translate_type("numeric")) }} as tip_amount,
    {{ dbt.cast("tolls_amount", api.Column.translate_type("numeric")) }} as tolls_amount,
    {{ dbt.cast("improvement_surcharge", api.Column.translate_type("numeric")) }} as improvement_surcharge,
    {{ dbt.cast("total_amount", api.Column.translate_type("numeric")) }} as total_amount,
    {{ dbt.cast("congestion_surcharge", api.Column.translate_type("numeric")) }} as congestion_surcharge,
    {{ dbt.cast("airport_fee", api.Column.translate_type("numeric")) }} as airport_fee
{%-endmacro-%}    