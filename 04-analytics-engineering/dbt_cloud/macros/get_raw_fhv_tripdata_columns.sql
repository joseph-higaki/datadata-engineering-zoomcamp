{#
    THis macro
#}
{% macro get_raw_fhv_tripdata_columns() -%}
    {{ dbt.cast("dispatching_base_num", api.Column.translate_type("string")) }} as dispatching_base_num,
    {{ dbt.cast("pickup_datetime", api.Column.translate_type("timestamp")) }} as pickup_datetime,
    {{ dbt.cast("dropOff_datetime", api.Column.translate_type("timestamp")) }} as dropOff_datetime,
    {{ dbt.cast("PUlocationID", api.Column.translate_type("int")) }} as PUlocationID,
    {{ dbt.cast("DOlocationID", api.Column.translate_type("int")) }} as DOlocationID,
    {{ dbt.cast("SR_Flag", api.Column.translate_type("int")) }} as SR_Flag,
    {{ dbt.cast("Affiliated_base_number", api.Column.translate_type("string")) }} as Affiliated_base_number
{%-endmacro-%}    