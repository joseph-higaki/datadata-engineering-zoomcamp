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

Making db connection a singleton,, cause why not :)




**DO WITH LOCAL DOCKER?**
https://code.visualstudio.com/docs/devcontainers/containers 
https://code.visualstudio.com/docs/devcontainers/tutorial 