--row_hash_value
with y as (
    select row_hash_value, rn_hash, 
    case rn_hash
        when 1 then 1
        else 0 
    end original_count,
    case rn_hash
        when 1 then 0
        else 1 
    end duplicate_count,    
    from {{ref('raw_fhv_tripdata')}}  
),
original_with_duplicates as (
    select count(1) as original_with_duplicates_count
    from y 
    where row_hash_value in (select row_hash_value from y where rn_hash > 1)
    and  rn_hash = 1 
) 
    select 
        count(1) as total_count,        
        (select sum(original_with_duplicates_count) from original_with_duplicates) as original_with_duplicates_count,        
        sum(original_count) as original_count,
        sum(duplicate_count) as duplicates_count
    from y
