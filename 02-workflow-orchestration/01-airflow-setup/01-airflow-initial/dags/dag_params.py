from airflow import DAG
from datetime import datetime
from airflow.operators.bash import BashOperator
from airflow.operators.python import PythonOperator
from airflow.models.param import Param





#second no with statement
params_understand_1_dag = DAG(
                                 'params_understand_1',
                                 start_date=datetime(2024,6,1),
                                 schedule_interval="0 21 1 * *",
                                 catchup=False,
                                 params={
                                    "my_str_param": Param("Default value, doesnt admit jinja" , type="string")
                                        },
                                 tags=['test', 'data_extract_nyc_taxi_dagingestion_gcs', 'nyc']
                              ) 
hello_bash_task_1 = BashOperator(
                                 task_id =  "hello_bash_task_1",
                                 bash_command="echo {{  params.my_str_param }}  {{execution_date}} ",
                                 dag=params_understand_1_dag
                              )
hello_python_task_2 = PythonOperator(
                                 task_id =  "hello_python_task_2",       
                                 op_args=[
                                        "{{ params.my_str_param }}"
                                    ],
                                 python_callable= lambda x: params_understand_1_dag.log.info(f"params_understand_1_dag.params: {x}") ,
                                 dag=params_understand_1_dag
                              )
hello_bash_task_1 >> hello_python_task_2