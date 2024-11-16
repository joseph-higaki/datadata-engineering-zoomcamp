with 
source as (    
    {% for item in ['2019_01','2019_02'] %}
        {% set table_name = 'green_tripdata_' +  item  + '_external' %}
        select 
            {{ dbt_utils.star(from=source('raw', table_name), quote_identifiers=False) }}          
        from {{ source('raw', table_name) }}
        {% if not loop.last %}
            union all              
        {% endif %}        
    {% endfor %}
)
select * from source