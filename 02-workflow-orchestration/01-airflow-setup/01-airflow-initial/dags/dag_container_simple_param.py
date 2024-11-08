from airflow import DAG, task
from datetime import datetime
from airflow.operators.bash import BashOperator
from airflow.operators.python import PythonOperator
from airflow.models.param import Param
from typing import List


def dag_container_simple_param(
        dag_id: str,
        start_date: datetime,
        schedule_interval:str,
        catchup: bool,
        my_str_param: str,
        tags: List[str]
        ):
    
   my_dag = DAG(
      dag_id = dag_id, 
      start_date=start_date,
      schedule_interval=schedule_interval,
      catchup=catchup,
      tags=tags
      )
   hello_bash_task_1 = BashOperator(
                                 task_id =  "hello_bash_task_1",
                                 bash_command=f"echo {my_str_param}"+ "  {{execution_date}} ",
                                 dag=my_dag
                              )
   hello_python_task_2 = PythonOperator(
                                    task_id =  "hello_python_task_2",       
                                    op_args=[
                                          f"{my_str_param}"
                                       ],
                                    python_callable= lambda x: my_dag.log.info(f"my_dag.params: {x}") ,
                                    dag=my_dag
                                 )
   
   hello_bash_task_1  >> hello_python_task_2
   return my_dag



any_variable = dag_container_simple_param( 
      'dag_container_simple_param_yellow',
      start_date=datetime(2024,6,1),
      schedule_interval="0 21 1 * *",
      catchup=False,
      my_str_param="yellow",
      tags=['simple_param', 'data_extract_nyc_taxi_dagingestion_gcs', 'nyc']
) 

any_variable_name_will_do = dag_container_simple_param( 
      'dag_container_simple_param_green',
      start_date=datetime(2024,6,1),
      schedule_interval="0 21 1 * *",
      catchup=False,
      my_str_param="green",
      tags=['simple_param', 'data_extract_nyc_taxi_dagingestion_gcs', 'nyc']
) 
# any_variable_will_do as long as the DAG object gets added in the global scope.

with dag_container_simple_param( 
      'dag_container_simple_param_blue',
      start_date=datetime(2024,6,1),
      schedule_interval="0 21 1 * *",
      catchup=False,
      my_str_param="blue",
      tags=['simple_param', 'data_extract_nyc_taxi_dagingestion_gcs', 'nyc']
): 
   pass

#creating 5 dags
for i in range(0, 5):
   with dag_container_simple_param( 
      f'dag_container_simple_param_{i}',
      start_date=datetime(2024,6,1),
      schedule_interval="0 21 1 * *",
      catchup=False,
      my_str_param=f"{i}",
      tags=['simple_param', 'data_extract_nyc_taxi_dagingestion_gcs', 'nyc']
   ): 
      pass