# Docker

## Running Docker

I don't have Docker installed in my Win local laptop
So will try to run docker from the codespace

After I get to setup a postgre docker image, then I can try to run that image in a locally hosted docker

```bash
docker info 
```

![docker info](../../_resources/01%2002%20docker%20info%20codebase.png)

1. Build an image

```bash
docker build -f ./PythonDockerfile -t test-python .
```

1. List Docker Images

```bash
docker images
``` 

![alt text](image.png)

1. Run newly created Docker Image
   
```bash
docker run -it test-python
```

![alt text](image-1.png)

```bash
docker ps -a
```

![alt text](image-2.png)

1. Have [PythonDockerfile](./PythonDockerfile) start a python simple program 
   
```bash
FROM python:3.10
RUN pip install pandas
WORKDIR /app
COPY pipeline.py pipeline.py
ENTRYPOINT ["python", "pipeline.py"]
```

1. Create a python [pipeline](./pipeline.py)

```python
import sys
import pandas
    
if __name__ == '__main__':
    print(f'args {sys.argv}')
    print(pandas.__version__)
```

1. RE-build docker image 

```bash
docker build -f ./PythonDockerfile -t test-python .
```
1. Execute docker container with args

```bash
docker run -it test-python firstArg secondArg
```

![alt text](image-3.png)

## Running Postgre in Docker 

Based on [video: DE Zoomcamp 1.2.2 - Ingesting NY Taxi Data to Postgres](https://youtu.be/2JM-ziJt0WI?si=EhaTa-eXLax8l8mn)

### Run PostgreSQL in a container

Lets use image ver 16 from [postgres](https://hub.docker.com/_/postgres)

```bash
docker run -it \
    --name pg-db \
    -e POSTGRES_USER="root" \
    -e POSTGRES_PASSWORD="root" \
    -e POSTGRES_DB="ny_taxi" \
    -p 5432:5432 \
    postgres:16   
 
```

PostgreSQL Running
![alt text](image-4.png)
![alt text](image-6.png)

## WHen Coming back to run existing posgre container

```bash
docker start pg-db
```

I instlled pgcli in the local dev environment. (SHould I include this in the .devcontainer / requirements.txt?)

```bash
pip install pgcli
pip install psycopg
```

I cannot connect to postgreSql running from pgcli
![alt text](image-5.png)

Nor telnet
![alt text](image-7.png)



### Connect from local Jupyter Nb to docker postgre

Run jupyter notebook at codespace
```bash
jupyter notebook
```

Connect notebook [explore-pgdb.ipynb](./explore-pgdb.ipynb) to Jupyter server

Use the URL with token provided at Jupyter Start logs

For Example: http://127.0.0.1:8888/tree?token=2c13265ca9719e0a0f9744cc7b45bfaf3f4f34f3e9fbdc2a 

(or set 123 pswd)


Got an python version compatibility error between pandas and numpy 
Followed https://stackoverflow.com/questions/78634235/numpy-dtype-size-changed-may-indicate-binary-incompatibility-expected-96-from 
and testing rebuilding the codespace with numpy version specified

Added to [requirements](../../.devcontainer/requirements.txt) 
`numpy==1.26.3`

**Connect to docker postgre from codespace jupyter notebook**

```python
import pandas as pd
from sqlalchemy import create_engine
engine = create_engine('postgresql://root:root@localhost:5432/ny_taxi')
engine.connect()
pd.read_sql("SELECT 1", con = engine)
```

![alt text](image-8.png)

### Data wrangle and create it into pg-db

While inspecting `yellow_tripdata_2021-01.csv` realize that we need to some column transformations

THis is the  [Explore notebook](./0-explore-pgdb.ipynb)

### Ingest data into the database through the notebook 
This is the [Ingestion notebook](./1-ingest-pgdb.ipynb)

### Deply pgAdmin

I will start another container with web based pgAdmin
using: https://hub.docker.com/r/elestio/pgadmin

#### Create DOcker Network
```bash
docker network create pg-db-network
```

#### Attach Docker Network to existing container
```bash
docker network connect pg-db-network pg-db
``` 

#### Or, if re-creating or creating the pg-db container for the first time

```bash
docker run -it \
    --name pg-db \
    --network=pg-db-network \
    -e POSTGRES_USER="root" \
    -e POSTGRES_PASSWORD="root" \
    -e POSTGRES_DB="ny_taxi" \
    -p 5432:5432 \
    postgres:16   
```

#### Create pgadmin with pg network
```bash
docker run -it \
  -e PGADMIN_DEFAULT_EMAIL="admin@admin.com" \
  -e PGADMIN_DEFAULT_PASSWORD="root" \
  -p 8080:80 \
  --name pgadmin \
  --network=pg-db-network \
  elestio/pgadmin
```

#### Manually Forwarded a port in VS Code 
![alt text](image-9.png)

#### Register pg-db in pgadmin
![alt text](image-10.png)

![alt text](image-11.png)

### Dockerize the script
https://www.youtube.com/watch?v=B1WwATwf-vY&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=8

#### Convert into Python Script to have a baseline

```bash
jupyter nbconvert --to=script 1-ingest-pgdb.ipynb
```

#### Python script to ingest csv

[Python Ingest script](./1-ingest-pgdb.py)

Executed full https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz in chunks of 10K records

Result

```bash
***** Table yellow_taxi_data count 1369765 records *******************************************************
***** * **************************************************************************************************
***** File load completed ********************************************************************************
***** Start batch 2024-10-23 10:47:46.217122 *************************************************************
***** End   batch 2024-10-23 10:49:19.306202 *************************************************************
***** Total time taken was     93.089 seconds for 137 iterations *****************************************
***** Start Table count yellow_taxi_data: 0 records ******************************************************
***** End   Table count yellow_taxi_data: 1369765 records ************************************************
***** * **************************************************************************************************
```
![alt text](image-12.png)

#### Put the ready script into a container


```bash

docker build -f ./1IngestPgdbDockerFile -t 1-ingest-pgdb-image .

docker run -it --name 1-ingest-pgdb --network=pg-db-network 1-ingest-pgdb-image
```

#### DockerFile hardcoding the params

```DockerFile 
FROM python:3.9.20
COPY 1-ingest-pgdb-requirements.txt 1-ingest-pgdb-requirements.txt
RUN pip install -r 1-ingest-pgdb-requirements.txt
COPY 1-ingest-pgdb.py 1-ingest-pgdb.py
ENTRYPOINT ["python", "1-ingest-pgdb.py", "--db_user", "root", "--db_password", "root", "--db_host", "pg-db", "--db_port", "5432", "--db_name", "ny_taxi", "--table_name", "yellow_taxi_data",  "--data_url", "https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz"]
```

#### Removing params to the ingestion from the Docker file

```DockerFile
FROM python:3.9.20
COPY 1-ingest-pgdb-requirements.txt 1-ingest-pgdb-requirements.txt
RUN pip install -r 1-ingest-pgdb-requirements.txt
COPY 1-ingest-pgdb.py 1-ingest-pgdb.py
ENTRYPOINT ["python", "1-ingest-pgdb.py"]
``` 

```bash
docker run -it \ 
  --network=pg-db-network \
  --name 1-ingest-pgdb \
  1-ingest-pgdb-image \     
    --db_user=root \ 
    --db_password=root \ 
    --db_host=pg-db \ 
    --db_port=5432 \ 
    --db_name=ny_taxi \ 
    --table_name=yellow_taxi_data \
    --data_url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz

#Not sure why my bash doesn't work with multiline

docker run -it   --network=pg-db-network   --name 1-ingest-pgdb  1-ingest-pgdb-image     --db_user=root    --db_password=root     --db_host=pg-db     --db_port=5432     --db_name=ny_taxi     --table_name=yellow_taxi_data     --data_url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz
```

#### Using local mount for postgresql

##### Kill / Remove pg-db
 
 ```bash
docker kill pg-db
docker rm pg-db
 ```

 ##### Create `pg-db` with Local mount

Adding a [.gitignore](./gitignore)
 ```git
 .ipynb_checkpoints/
ny_taxi_postgres_data/
 ```

```bash
docker run -it \
    --name pg-db \
    --network=pg-db-network \
    -e POSTGRES_USER="root" \
    -e POSTGRES_PASSWORD="root" \
    -e POSTGRES_DB="ny_taxi" \
    -v ./ny_taxi_postgresql_data:/var/lib/postgresql/data \
    -p 5432:5432 \
    postgres:16   
```

Re-runnnig existing container `1-ingest-pgdb` works

```bash
docker start 1-ingest-pgdb
```

#### using Docker Compose

[1-pgdb-docker-compose.yaml](./1-pgdb-docker-compose.yaml)

```yaml
services:
  pg-db:
    image: postgres:16
    environment:
      - POSTGRES_USER=root
      - POSTGRES_PASSWORD=root
      - POSTGRES_DB=ny_taxi
    volumes:
      - "./ny_taxi_postgresql_data:/var/lib/postgresql/data"
    ports: 
      - "5432:5432"
  pgadmin:
    image: elestio/pgadmin
    environment: 
      - PGADMIN_DEFAULT_EMAIL=admin@admin.com
      - PGADMIN_DEFAULT_PASSWORD=root
    ports:
      - "8080:80"
```

```bash
docker-compose -f 1-pgdb-docker-compose.yaml up 
```

We didn't specify a network

```bash
docker network ls
``` 
![alt text](image-13.png)

Create a network with <folder>_default name

**BUT!!** Since I created the ingestion container `1-ingest-pgdb` with a network `pg-db-network` it cannot connect to the database 

![alt text](image-14.png)

##### Option 1: Using compose auto created network
One option is to Create / Run ingestion container using the known network created by `docker compose`
: `02-docker_default`

```bash
docker run -it \ 
  --network=02-docker_default \
  --name 1-ingest-pgdb \
  1-ingest-pgdb-image \     
    --db_user=root \ 
    --db_password=root \ 
    --db_host=pg-db \ 
    --db_port=5432 \ 
    --db_name=ny_taxi \ 
    --table_name=yellow_taxi_data \
    --data_url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz

docker run -it   --network=02-docker_default   --name 1-ingest-pgdb  1-ingest-pgdb-image     --db_user=root    --db_password=root     --db_host=pg-db     --db_port=5432     --db_name=ny_taxi     --table_name=yellow_taxi_data     --data_url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz
```
##### Option 2: Using pre-existing network in compose

Added to [1-pgdb-docker-compose.yaml](./1-pgdb-docker-compose.yaml)

```yaml
networks:
  default:
    name: pg-db-network
    external: true
```

Create Network beforehand 
```bash
docker network create pg-db-network
```

```bash
docker-compose -f 1-pgdb-docker-compose.yaml up -d

docker run -it   --network=pg-db-network  --name 1-ingest-pgdb  1-ingest-pgdb-image     --db_user=root    --db_password=root     --db_host=pg-db     --db_port=5432     --db_name=ny_taxi     --table_name=yellow_taxi_data     --data_url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz
``` 







**DO WITH LOCAL DOCKER?**
https://code.visualstudio.com/docs/devcontainers/containers 
https://code.visualstudio.com/docs/devcontainers/tutorial 