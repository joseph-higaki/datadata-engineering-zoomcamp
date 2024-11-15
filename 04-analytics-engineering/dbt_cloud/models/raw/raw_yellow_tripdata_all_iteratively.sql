with 
source as (
    
    {% for item in ['2019_01','2019_02'] %}
        {% set table_name = 'yellow_tripdata_' +  item  + '_external' %}
        select * from {{ source('raw', table_name) }}
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
