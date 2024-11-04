# Airflow Setup

Helpful links 

Main Guide from Course: but challenging to follow
https://www.youtube.com/watch?v=lqDMzReAtrw&list=PL3MmuxUbc_hKVX8VnwWCPaWlIHf1qmg8s&index=5

https://datatalks.club/blog/how-to-setup-lightweight-local-version-for-airflow.html

https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/main/cohorts/2022/week_2_data_ingestion/airflow

https://airflow.apache.org/docs/apache-airflow/2.0.2/start/docker.html

https://www.youtube.com/watch?v=N3Tdmt1SRTM
Remember to mount ./airflow so that we don't lose our work????


## Locate gcloud credentials

`/workspaces/data-engineering-zoomcamp/.gcp.auth/de-zoomcamp-jhigaki-course-68ab014c1efe.json`

## Directories Setup

Before running docker airflow commands, create directories before docker-compose  does it with a differnet user

```bash
mkdir 01-airflow-initial
cd 01-airflow-initial
mkdir -p ./dags ./logs ./plugins ./config
```

## Airflow ID
I'm still not sure why I would need to add AIRFLOW_UID as an env variable or into an .env file.
So, for now, not doing it

## Get Apache Docker Compose

```bash 
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.10.2/docker-compose.yaml'

curl -O 'https://airflow.apache.org/docs/apache-airflow/stable/docker-compose.yaml'
```

## Edit Downloaded `docker-compose` 

### Image 
I will not customize with a Dockerfile at first
` image: ${AIRFLOW_IMAGE_NAME:-apache/airflow:2.10.2}` 
I see this is done at [Luis instructions](https://github.com/guoliveira/data-engineer-zoomcamp-project/tree/main/Airflow) for the purpose of running GCloud clinent connect and PySpark. This is explained [here](https://datatalks.club/blog/how-to-setup-lightweight-local-version-for-airflow.html)

Remains as is (for now)

`image: ${AIRFLOW_IMAGE_NAME:-apache/airflow:2.10.2}` 

### Make it Lightweight
Removal of redis queue, worker, triggerer, flower, and changing from CeleryExecutor (multi-node) mode to LocalExecutor (single-node) mode

*I found that at airflow-init, there's a folder `./sources` being mounted. I have not created that when created `/dags ./logs ./plugins ./config`*
This is in the full [docker-compse version](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/main/cohorts/2022/week_2_data_ingestion/airflow/docker-compose.yaml)
```bash
mkdir -p /sources/logs /sources/dags /sources/plugins
chown -R "${AIRFLOW_UID}:0" /sources/{logs,dags,plugins}
```

### Specify Airflow's Postgre Persistance 

`mkdir ./airflow_postgresql_data`

```docker
services:
  postgres:
    ... 
    volumes:
      - ${AIRFLOW_PROJ_DIR:-.}:/airflow_postgresql_data:/var/lib/postgresql/data
```

## Initialize the database

`docker compose up airflow-init`

Result here [1-airflow-initial-docker-compose-up-airflow-init.txt](01-airflow-initial-docker-compose-up-airflow-init.txt)

## Running Airflow
`docker compose up`


Errors

## Setting AIRFLOW_UID

`echo -e "AIRFLOW_UID=$(id -u)" > .env`
My running Id in the container is vscode (1000)

so the `.env` file contains
```
AIRFLOW_UID=1000
```

## Try again

`docker compose up airflow-init | tee docker-compose-up-airflow-init.txt`

`docker compose up | tee docker-compose-up-airflow-init.txt`

Success



## Warning Root User
 get rid of pg warnings rooot? 

![alt text](../../_resources/02-workflow-orchestration/01-airflow-setup/readme.md/image.png)
I've set `airflow-init` also to AIRFLOW_UID
Let's see if I have any permission problems down the line

** At this point Airflow is UP **

##  configure GCS cloud 



 create dags
 https://www.youtube.com/watch?v=9ksX9REfL8w&list=PL3MmuxUbc_hKVX8VnwWCPaWlIHf1qmg8s&index=6 

