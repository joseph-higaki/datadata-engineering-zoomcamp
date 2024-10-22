import pandas as pd
import argparse
from sqlalchemy import create_engine
from time import time
from datetime import datetime;

schema = {
    'VendorID': pd.Series(dtype=pd.Int64Dtype()),
    'tpep_pickup_datetime': pd.Series(dtype='datetime64[ns]'),
    'tpep_dropoff_datetime': pd.Series(dtype='datetime64[ns]'),
    'passenger_count': pd.Series(dtype=pd.Int64Dtype()),
    'trip_distance': pd.Series(dtype='float64'),
    'RatecodeID': pd.Series(dtype=pd.Int64Dtype()),
    'store_and_fwd_flag': pd.Series(dtype='object'),
    'PULocationID': pd.Series(dtype='int64'),
    'DOLocationID': pd.Series(dtype='int64'),
    'payment_type': pd.Series(dtype=pd.Int64Dtype()),
    'fare_amount': pd.Series(dtype='float64'),
    'extra': pd.Series(dtype='float64'),
    'mta_tax': pd.Series(dtype='float64'),
    'tip_amount': pd.Series(dtype='float64'),
    'tolls_amount': pd.Series(dtype='float64'),
    'improvement_surcharge': pd.Series(dtype='float64'),
    'total_amount': pd.Series(dtype='float64'),
    'congestion_surcharge': pd.Series(dtype='float64'),
    'tpep_pickup_datetime_text': pd.Series(dtype='object'),
    'tpep_dropoff_datetime_text': pd.Series(dtype='object')    
}


db_user = 'root'
db_password = 'root'
db_host = '127.0.0.1'
db_port = '5432'
db_name = 'ny_taxi'
table_name = 'yellow_taxi_data'
data_url = 'https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz'



df_empty = pd.DataFrame(schema)


df_empty.dtypes



engine = create_engine(f'postgresql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}')
engine.connect()

print(pd.io.sql.get_schema(df_empty, name= table_name))

df_empty.columns


df_empty.to_sql(name= table_name, con=engine, if_exists='replace', index=False)


# Insert Values - test inserting first batch


def table_count(table_name: str):
    return engine.execute(f"select count(1) from {table_name}").scalar()

table_count(table_name)

def 

def ingest_data()
    
d_start = datetime.now()
t_start = time()
iter_count = 0
print(f'Start batch {d_start}')
initial_table_count = table_count(table_name)
print(f'Table {table_name} count {initial_table_count:06} records')      
for chunk in pd.read_csv(data_url, compression='gzip',nrows=100, iterator=True, chunksize=10):
    iter_count += 1
    print(f'Iteration {iter_count:03}')
    b_start = time()
    chunk.to_sql(name= table_name, con=engine, if_exists='append', index=False)
    b_end = time()
    print(f'Appends time taken {b_end-b_start:10.3f} seconds.')
    current_table_count = table_count(table_name)    
    print(f'Table {table_name} count {current_table_count:06} records')
t_end = time()
print(f'File load completed. Total time taken was {t_end-t_start:10.3f} seconds for {iter_count:03} batches. Start - End Table Counts: {initial_table_count} - {current_table_count} ')

def main(args):
    

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Simple NYC Taxi ingest")    
    parser.add_argument('db_user', type=str, help='Database user')
    parser.add_argument('db_password', type=str, help='Database password')
    parser.add_argument('db_host', type=str, help='Database host')
    parser.add_argument('db_port', type=str, help='Database port')
    parser.add_argument('db_name', type=str, help='Database name')
    parser.add_argument('table_name', type=str, help='Table name')
    parser.add_argument('data_url', type=str, help='Data URL')
    args = parser.parse_args()
    main(args)