from airflow import DAG
from datetime import datetime
from airflow.operators.bash import BashOperator
import os


#first usual with dag
with DAG(
    'semantics_understand_1',
    start_date=datetime(2024,6,1),
    schedule_interval="0 21 1 * *",
    catchup=False,
    tags=['test', 'data_extract_nyc_taxi_dagingestion_gcs', 'nyc']
) as dag:
    #Hello 1
    hello_bash_task_1_dag_1 = BashOperator(
       task_id =  "hello_bash_task_1_dag_1",
       bash_command="echo {{execution_date}} {{task_instance_key_str}}",
    )

    #Hello 2
    hello_bash_task_2_dag_1 = BashOperator(
       task_id =  "hello_bash_task_2_dag_1",       
       bash_command="echo {{macros.ds_add(ds,-1)[0:7]}}"
    )
hello_bash_task_1_dag_1 >> hello_bash_task_2_dag_1



#second no with statement
semantics_understand_2_dag = DAG(
                                 'semantics_understand_2',
                                 start_date=datetime(2024,6,1),
                                 schedule_interval="0 21 1 * *",
                                 catchup=False,
                                 tags=['test', 'data_extract_nyc_taxi_dagingestion_gcs', 'nyc']
                              ) 
hello_bash_task_1_dag_2 = BashOperator(
                                 task_id =  "hello_bash_task_1_dag_2",
                                 bash_command="echo {{execution_date}} {{ task_instance_key_str }}",
                                 dag=semantics_understand_2_dag
                              )
hello_bash_task_2_dag_2 = BashOperator(
                                 task_id =  "hello_bash_task_2_dag_2",       
                                 bash_command="echo {{macros.ds_add(ds,-1)[0:7]}}",
                                 dag=semantics_understand_2_dag
                              )
hello_bash_task_1_dag_2 >> hello_bash_task_2_dag_2

#third with statement previously set
semantics_understand_3_dag = DAG(
                                 'semantics_understand_3',
                                 start_date=datetime(2024,6,1),
                                 schedule_interval="0 21 1 * *",
                                 catchup=False,
                                 tags=['test', 'data_extract_nyc_taxi_dagingestion_gcs', 'nyc']
                              ) 
with semantics_understand_3_dag:   
   hello_bash_task_1_dag_3 = BashOperator(
                                 task_id =  "hello_bash_task_1_dag_3",
                                 bash_command="echo {{execution_date}} {{ task_instance_key_str }}"                                
                              )
   hello_bash_task_2_dag_3 = BashOperator(
                                 task_id =  "hello_bash_task_2_dag_3",       
                                 bash_command="echo {{macros.ds_add(ds,-1)[0:7]}}"
                              )
hello_bash_task_1_dag_3 >> hello_bash_task_2_dag_3

#fourth no with statement
semantics_understand_4_dag = DAG(
                                 'semantics_understand_4',
                                 start_date=datetime(2024,6,1),
                                 schedule_interval="0 21 1 * *",
                                 catchup=False,
                                 tags=['test', 'data_extract_nyc_taxi_dagingestion_gcs', 'nyc']
                              ) 
some_task_dag_4 = BashOperator(
                                 task_id =  "some_task_dag_4",
                                 bash_command="echo {{execution_date}} {{ task_instance_key_str }}",
                                 dag=semantics_understand_4_dag
                              )
hello_bash_task_2_dag_4 = BashOperator(
                                 task_id =  "hello_bash_task_2_dag_2",       
                                 bash_command="echo {{macros.ds_add(ds,-1)[0:7]}}",
                                 dag=semantics_understand_4_dag
                              )

hello_bash_task_3_dag_4 = BashOperator(
                                 task_id =  "hello_bash_task_3_dag_4",       
                                 bash_command="echo {{macros.ds_add(ds,-1)[0:7]}}",
                                 dag=semantics_understand_4_dag
                              )

hello_bash_task_4_dag_4 = BashOperator(
                                 task_id =  "hello_bash_task_4_dag_4",       
                                 bash_command="echo {{macros.ds_add(ds,-1)[0:7]}}",
                                 dag=semantics_understand_4_dag
                              )

# 1 -. 2 -. 3
#some_task_dag_4.set_downstream(hello_bash_task_2_dag_4).set_downstream(hello_bash_task_3_dag_4)

# 1 2 3 4
# some_task_dag_4.set_downstream(hello_bash_task_2_dag_4)
# hello_bash_task_2_dag_4.set_downstream(hello_bash_task_3_dag_4)
# hello_bash_task_3_dag_4.set_downstream(hello_bash_task_4_dag_4)

# 1 -- (2, 3) -- 4
# some_task_dag_4.set_downstream(hello_bash_task_2_dag_4)
# some_task_dag_4.set_downstream(hello_bash_task_3_dag_4)
# hello_bash_task_2_dag_4.set_downstream(hello_bash_task_4_dag_4)
# hello_bash_task_3_dag_4.set_downstream(hello_bash_task_4_dag_4)

# some_task_dag_4 >> [hello_bash_task_2_dag_4, hello_bash_task_3_dag_4]
# hello_bash_task_2_dag_4 >> hello_bash_task_4_dag_4
# hello_bash_task_3_dag_4 >> hello_bash_task_4_dag_4

from airflow.models.baseoperator import chain
chain(some_task_dag_4,  [hello_bash_task_2_dag_4, hello_bash_task_3_dag_4], hello_bash_task_4_dag_4) 