with row_hash as (
    select *,        
    {{ dbt_utils.generate_surrogate_key([            
        'dispatching_base_num',
        'pickup_datetime',
        'dropOff_datetime',
        'PUlocationID',
        'DOlocationID',
        'SR_Flag',
        'Affiliated_base_number'
        ])}} as row_hash_value,            
    from {{ref("raw_fhv_tripdata_all")}} 
),
row_numbered_by_row_hash as (    
    select *,
    row_number() over (
        partition by row_hash_value
    ) as rn_hash
    from row_hash
)
select * 
from row_numbered_by_row_hash