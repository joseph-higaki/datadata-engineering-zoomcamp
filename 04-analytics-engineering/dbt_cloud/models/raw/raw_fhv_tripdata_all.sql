with 
source as (    
    {% for item in get_year_month_load('fhv') %}
        {% set table_name = 'fhv_tripdata_' +  item  + '_external' %}
        select 
           {{get_raw_fhv_tripdata_columns()}} 
           , '{{table_name}}' as source_name
        from {{ source('raw', table_name) }}
        {% if not loop.last %}
            union all              
        {% endif %}        
    {% endfor %}
),
renamed as (
    select *
    from source
    {% if var('is_test_run', default=true) %}
    limit 100
    {% endif %}
)
select * from renamed