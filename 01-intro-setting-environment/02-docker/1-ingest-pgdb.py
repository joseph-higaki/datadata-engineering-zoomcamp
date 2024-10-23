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

"""
python 1-ingest-pgdb.py 
-db_user=root 
-db_password=root 
-db_host=127.0.0.1 
-db_port=5432 
-db_name=ny_taxi 
-table_name=yellow_taxi_data 
-data_url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz

python 1-ingest-pgdb.py 
-db_user=root -db_password=root -db_host=127.0.0.1 -db_port=5432 -db_name=ny_taxi -table_name=yellow_taxi_data -data_url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz

python 1-ingest-pgdb.py  --db_user=root  --db_password=root  --db_host=127.0.0.1  --db_port=5432  --db_name=ny_taxi  --table_name=yellow_taxi_data  --data_url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz
"""


def get_centered_text(message: str, padding_char: str = "*", total_lenght: int = 100):
    return f"{padding_char*5} {f'{message} ':{padding_char}<{total_lenght}}"

def printc(message: str):
    print(get_centered_text(message))  
    
class Ingest:
    class Database:
        _engine  = None    

        @classmethod
        def get_engine(cls, db_user, db_password, db_host, db_port, db_name):
            if cls._engine is None:
                cls._engine = create_engine(f'postgresql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}')
                cls._engine.connect()
            return cls._engine

    _engine = None    
    _db_user: str
    _db_password: str
    _db_host: str
    _db_port: str
    _db_name: str
    _table_name: str
    _data_url: str

    def __init__(self, db_user, db_password, db_host, db_port, db_name, table_name, data_url):
        self._db_user = db_user
        self._db_password = db_password
        self._db_host = db_host
        self._db_port = db_port
        self._db_name = db_name
        self._table_name = table_name
        self._data_url = data_url

    def __enter__(self):
        self._engine = Ingest.Database.get_engine(self._db_user, self._db_password, self._db_host, self._db_port, self._db_name)
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self._engine.dispose()

    def _get_table_count(self) -> int:
        return self._engine.execute(f"select count(1) from {self._table_name}").scalar()
    

    def _create_table(self):
        if self._engine.has_table(self._table_name):
             printc(f"Table {self._table_name} already exists. Skipping creation.")
             return
        df_empty = pd.DataFrame(schema)
        printc("See DDL from Schema")
        print(pd.io.sql.get_schema(df_empty, name= self._table_name))   
        printc("See DDL from Schema using Sql Connection")    
        print(pd.io.sql.get_schema(df_empty, name= self._table_name, con= self._engine))   
        printc("Creating table")
        df_empty.to_sql(name= self._table_name, con = self._engine, if_exists='replace', index=False)  

    def _ingest_data(self):    
        d_start = datetime.now()
        t_start = time()
        iter_count = 0
        
        initial_table_count = self._get_table_count()
        printc(f'Table {self._table_name} count {initial_table_count} records')      
        for chunk in pd.read_csv(self._data_url, compression='gzip',nrows=None, iterator=True, chunksize=10000):
            iter_count += 1
            printc(f'Iteration {iter_count}')
            b_start = time()
            chunk.to_sql(name= self._table_name, con= self._engine, if_exists='append', index=False)
            b_end = time()
            printc(f'Appends time taken {b_end-b_start:10.3f} seconds.')
            current_table_count = self._get_table_count()    
            printc(f'Table {self._table_name} count {current_table_count} records')
        t_end = time()
        d_end = datetime.now()
        printc('*')
        printc(f'File load completed')
        printc(f'Start batch {d_start}')
        printc(f'End   batch {d_end}')        
        printc(f'Total time taken was {t_end-t_start:10.3f} seconds for {iter_count} iterations')
        printc(f'Start Table count {self._table_name}: {initial_table_count} records')
        printc(f'End   Table count {self._table_name}: {current_table_count} records')        
        printc('*')

    def execute(self):        
        self._create_table()
        self._ingest_data()

def main(args):
    with Ingest(args.db_user, args.db_password, args.db_host, args.db_port, args.db_name, args.table_name, args.data_url) as ingest:        
        ingest.execute()                      

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Simple NYC Taxi ingest")    
    parser.add_argument('--db_user', type=str, help='Database user')
    parser.add_argument('--db_password', type=str, help='Database password')
    parser.add_argument('--db_host', type=str, help='Database host')
    parser.add_argument('--db_port', type=str, help='Database port')
    parser.add_argument('--db_name', type=str, help='Database name')
    parser.add_argument('--table_name', type=str, help='Table name')
    parser.add_argument('--data_url', type=str, help='Data URL')
    args = parser.parse_args()        
    main(args)    