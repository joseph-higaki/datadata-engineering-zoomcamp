# Week 2 Homework

In this homework, we'll prepare data for the next week. We'll need
to put these datasets to our data lake:

* For the lessons, we'll need the Yellow taxi dataset (years 2019 and 2020)
* For the homework, we'll need FHV Data (for-hire vehicles, for 2019 only)

You can find all the URLs on [the dataset page](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page)


In this homework, we will:

* Modify the DAG we created during the lessons for transferring the yellow taxi data
* Create a new dag for transferring the FHV data
* Create another dag for the Zones data

## Create DAG and airflow instance

## Question 1: Start date for the Yellow taxi data (1 point)

You'll need to parametrize the DAG for processing the yellow taxi data that
we created in the videos. 

What should be the start date for this dag?

* 2019-01-01
* 2020-01-01
* 2021-01-01
* days_ago(1)

New entry
-  ** 2019-02-01   ☑️**


Because the data for a given month only exists after the month is over.

### Start date - 2019-02-01
The DAG starts 2019-02-01
`trip_data_start_date = datetime(2019,2,1)`

### Scheduled every 1st day of the month at 21:00
I'm assuming that at 21:00 for the first day of the month, the data for the previous month is published that is why:
`trip_data_schedule_interval = "0 21 1 * *"`

### Scheduled every 1st day of the month at 21:00
The DAG starts 2019-02-01, and the process grabs the day before: 2019-01-31 - converted to month
`_tripdata_{{{{macros.ds_add(ds,-1)[0:7]}}}}.parquet`


## Question 2: Frequency for the Yellow taxi data (1 point)

How often do we need to run this DAG?

* Daily
* **Monthly  ☑️**
* Yearly
* Once


## Re-running the DAGs for past dates

To execute your DAG for past dates, try this:

* First, delete your DAG from the web interface (the bin icon)
* Set the `catchup` parameter to `True`
* Be careful with running a lot of jobs in parallel - your system may not like it. Don't set it higher than 3: `max_active_runs=3`
* Rename the DAG to something like `data_ingestion_gcs_dag_v02` 
* Execute it from the Airflow GUI (the play button)


Also, there's no data for the recent months, but `curl` will exit successfully.
To make it fail on 404, add the `-f` flag:

```bash
curl -sSLf { URL } > { LOCAL_PATH }
```

When you run this for all the data, the temporary files will be saved in Docker and will consume your 
disk space. If it causes problems for you, add another step in your DAG that cleans everything up.
It could be a bash operator that runs this command:

```bash
rm name-of-csv-file.csv name-of-parquet-file.parquet
```


## Question 3: DAG for FHV Data (2 points)

Now create another DAG - for uploading the FHV data. 

We will need three steps: 

* Download the data
* Parquetize it 
* Upload to GCS

If you don't have a GCP account, for local ingestion you'll need two steps:

* Download the data
* Ingest to Postgres

Use the same frequency and the start date as for the yellow taxi dataset

Question: how many DAG runs are green for data in 2019 after finishing everything? 

**All of them** 

Note: when processing the data for 2020-01 you probably will get an error. It's up 
to you to decide what to do with it - for Week 3 homework we won't need 2020 data.
**All of them**


## Question 4: DAG for Zones (2 points)


Create the final DAG - for Zones:

* Download it
* Parquetize 
* Upload to GCS

(Or two steps for local ingestion: download -> ingest to postgres)

How often does it need to run?

* Daily
* Monthly
* Yearly
* **Once ☑️**
Probably ONce cause it doesn't have an id to make slowly changing dimensions :)


## Submitting the solutions

* Form for submitting: https://forms.gle/ViWS8pDf2tZD4zSu5
* You can submit your homework multiple times. In this case, only the last submission will be used. 

Deadline: February 7, 17:00 CET 