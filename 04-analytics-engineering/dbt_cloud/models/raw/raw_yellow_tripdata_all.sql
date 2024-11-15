with 
source as (    
    {% for item in ['2019_01','2019_02','2019_03','2019_04','2019_05','2019_06','2019_07','2019_08','2019_09','2019_10','2019_11','2019_12','2020_01','2020_02','2020_03','2020_04','2020_05','2020_06','2020_07','2020_08','2020_09','2020_10','2020_11','2020_12'] %}
        {% set table_name = 'yellow_tripdata_' +  item  + '_external' %}
        select 
           {{get_raw_yellow_tripdata_columns()}}
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
