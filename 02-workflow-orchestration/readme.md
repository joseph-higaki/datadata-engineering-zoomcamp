# Orchestration

Orchestration is the process of **dependency management** through **automation**

- Workflow management
- Automation
- Error handling 
- Recovery
- Monitoring, alerting
- Resource optimization
- Observability
- Debugging
- Compliance/Auditing

2024 cohort uses Mage

I want to use Apache Airflow

[Introduction to Workflow Orchestration](https://www.youtube.com/watch?v=0yK7LXwYeD0&list=PL3MmuxUbc_hKVX8VnwWCPaWlIHf1qmg8s&index=4)

## Workflow Description
![alt text](../_resources/02-workflow-orchestration/readme.md/image.png)

```mermaid
flowchart LR
    Extract --> TransformDL
    TransformDL --> TransformDW

    subgraph Extract ["Extract & Load"]
        A1[wget NYC TLC Website]
        A2[Raw Data in GCS]
        A1 --> A2
    end

    subgraph Clean
        X0[Read Parquet GCS]
        X1[Remove Duplicates]
        X2[Hable Missing Values]
        X3[Store Clean Parquet]
        X0 --> X1
        X0 --> X2
        X1 --> X3
        X2 --> X3
    end

    subgraph TransformDL
        B1[Read Raw GCS]
        B2[Ensure Parquet into GCS]
        Clean        
        B1 --> B2
        B2 --> Clean        
    end


    subgraph TransformDW
        C1[Read Clean Parquet GCS]        
        C2[Transformm into Fact and Dimension]
        C1 --> C2        
    end

```


## Setup Airflow
https://www.youtube.com/watch?v=lqDMzReAtrw&list=PL3MmuxUbc_hKVX8VnwWCPaWlIHf1qmg8s&index=5

Hard video to follow

This video is better to follow 
https://www.youtube.com/watch?v=Sva8rDtlWi4 

https://www.youtube.com/watch?v=N3Tdmt1SRTM
Remember to mount ./airflow so that we don't lose our work



