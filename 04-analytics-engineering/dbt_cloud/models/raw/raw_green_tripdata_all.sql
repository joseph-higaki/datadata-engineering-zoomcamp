with 
source as (    
    {% for item in get_year_month_load('green')  %}
        {% set table_name = 'green_tripdata_' +  item  + '_external' %}
        select 
           {{get_raw_green_tripdata_columns()}} 
           , 'green_tripdata_{{item}}' as source_table
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
