    with row_numbered_by_row_hash as (
        with row_numbered as (
            select *,        
            {{ dbt_utils.generate_surrogate_key([            
                'VendorID',
                'tpep_pickup_datetime',
                'tpep_dropoff_datetime',
                'passenger_count',
                'trip_distance',
                'RatecodeID',
                'store_and_fwd_flag',
                'PULocationID',
                'DOLocationID',
                'payment_type',
                'fare_amount',
                'extra',
                'mta_tax',
                'tip_amount',
                'tolls_amount',
                'improvement_surcharge',
                'total_amount',
                'congestion_surcharge',
                'airport_fee'
                ])}} as row_hash_value,
            row_number() 
                over ( 
                    partition by  y.VendorID, y.tpep_pickup_datetime 
                    order by y.tpep_pickup_datetime
                ) as rn    
            from {{ref("raw_yellow_tripdata_all")}} y
        )
        select *,
        row_number() over (
            partition by row_hash_value
        ) as rn_hash
        from row_numbered
    )
    select * from row_numbered_by_row_hash