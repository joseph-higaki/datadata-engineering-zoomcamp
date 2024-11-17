with fhv as (
    select * 
    from {{ ref('stg_fhv_tripdata') }}
),
renamed as (
    select 
       *
    from fhv
    {% if var('is_test_run', default=true) %}
    limit 100
    {% endif %}
)
select * from renamed
