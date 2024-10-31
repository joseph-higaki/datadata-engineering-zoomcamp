Attaching to airflow-init-1, airflow-scheduler-1, airflow-webserver-1, postgres-1
airflow-init-1       | 
airflow-init-1       | DB: postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1       | Performing upgrade to the metadata database postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1       | [2024-10-31T18:43:26.418+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1       | [2024-10-31T18:43:26.420+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1       | [2024-10-31T18:43:26.424+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1       | [2024-10-31T18:43:26.424+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1       | [2024-10-31T18:43:26.426+0000] {db.py:1674} INFO - Creating tables
airflow-init-1       | Database migrating done!
airflow-init-1       | airflow already exist in the db
airflow-init-1       | 2.10.2
[Kairflow-init-1 exited with code 0
airflow-scheduler-1  | 
airflow-webserver-1  | 
airflow-webserver-1  | [2024-10-31T18:43:49.802+0000] {configuration.py:2096} INFO - Creating new FAB webserver config file in: /opt/airflow/webserver_config.py
airflow-scheduler-1  |   ____________       _____________
airflow-scheduler-1  |  ____    |__( )_________  __/__  /________      __
airflow-scheduler-1  | ____  /| |_  /__  ___/_  /_ __  /_  __ \_ | /| / /
airflow-scheduler-1  | ___  ___ |  / _  /   _  __/ _  / / /_/ /_ |/ |/ /
airflow-scheduler-1  |  _/_/  |_/_/  /_/    /_/    /_/  \____/____/|__/
airflow-scheduler-1  | [2024-10-31T18:43:55.543+0000] {_client.py:1026} INFO - HTTP Request: GET https://apacheairflow.gateway.scarf.sh/scheduler?version=2.10.2&python_version=3.12&platform=Linux&arch=x86_64&database=postgresql&db_version=13.16&executor=LocalExecutor "HTTP/1.1 200 OK"
airflow-webserver-1  | [2024-10-31T18:43:56.373+0000] {override.py:1900} INFO - Created Permission View: can create on DAG Runs
airflow-webserver-1  | [2024-10-31T18:43:56.384+0000] {override.py:1951} INFO - Added Permission can create on DAG Runs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.394+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Runs
airflow-webserver-1  | [2024-10-31T18:43:56.403+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.413+0000] {override.py:1900} INFO - Created Permission View: can edit on DAG Runs
airflow-webserver-1  | [2024-10-31T18:43:56.422+0000] {override.py:1951} INFO - Added Permission can edit on DAG Runs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.433+0000] {override.py:1900} INFO - Created Permission View: can delete on DAG Runs
airflow-webserver-1  | [2024-10-31T18:43:56.441+0000] {override.py:1951} INFO - Added Permission can delete on DAG Runs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.453+0000] {override.py:1900} INFO - Created Permission View: menu access on DAG Runs
airflow-webserver-1  | [2024-10-31T18:43:56.461+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.490+0000] {override.py:1900} INFO - Created Permission View: menu access on Browse
airflow-webserver-1  | [2024-10-31T18:43:56.499+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.552+0000] {override.py:1900} INFO - Created Permission View: can read on Jobs
airflow-webserver-1  | [2024-10-31T18:43:56.560+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.571+0000] {override.py:1900} INFO - Created Permission View: menu access on Jobs
airflow-webserver-1  | [2024-10-31T18:43:56.581+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.646+0000] {override.py:1900} INFO - Created Permission View: can read on Audit Logs
airflow-webserver-1  | [2024-10-31T18:43:56.654+0000] {override.py:1951} INFO - Added Permission can read on Audit Logs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.664+0000] {override.py:1900} INFO - Created Permission View: menu access on Audit Logs
airflow-webserver-1  | [2024-10-31T18:43:56.671+0000] {override.py:1951} INFO - Added Permission menu access on Audit Logs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.738+0000] {override.py:1900} INFO - Created Permission View: can create on Variables
airflow-webserver-1  | [2024-10-31T18:43:56.750+0000] {override.py:1951} INFO - Added Permission can create on Variables to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.763+0000] {override.py:1900} INFO - Created Permission View: can read on Variables
airflow-webserver-1  | [2024-10-31T18:43:56.775+0000] {override.py:1951} INFO - Added Permission can read on Variables to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.789+0000] {override.py:1900} INFO - Created Permission View: can edit on Variables
airflow-webserver-1  | [2024-10-31T18:43:56.800+0000] {override.py:1951} INFO - Added Permission can edit on Variables to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.816+0000] {override.py:1900} INFO - Created Permission View: can delete on Variables
airflow-webserver-1  | [2024-10-31T18:43:56.828+0000] {override.py:1951} INFO - Added Permission can delete on Variables to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.842+0000] {override.py:1900} INFO - Created Permission View: menu access on Variables
airflow-webserver-1  | [2024-10-31T18:43:56.854+0000] {override.py:1951} INFO - Added Permission menu access on Variables to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.893+0000] {override.py:1900} INFO - Created Permission View: menu access on Admin
airflow-webserver-1  | [2024-10-31T18:43:56.907+0000] {override.py:1951} INFO - Added Permission menu access on Admin to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.973+0000] {override.py:1900} INFO - Created Permission View: can create on Task Instances
airflow-webserver-1  | [2024-10-31T18:43:56.982+0000] {override.py:1951} INFO - Added Permission can create on Task Instances to role Admin
airflow-webserver-1  | [2024-10-31T18:43:56.992+0000] {override.py:1900} INFO - Created Permission View: can read on Task Instances
airflow-webserver-1  | [2024-10-31T18:43:57.003+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.016+0000] {override.py:1900} INFO - Created Permission View: can edit on Task Instances
airflow-webserver-1  | [2024-10-31T18:43:57.024+0000] {override.py:1951} INFO - Added Permission can edit on Task Instances to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.037+0000] {override.py:1900} INFO - Created Permission View: can delete on Task Instances
airflow-webserver-1  | [2024-10-31T18:43:57.049+0000] {override.py:1951} INFO - Added Permission can delete on Task Instances to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.064+0000] {override.py:1900} INFO - Created Permission View: menu access on Task Instances
airflow-webserver-1  | [2024-10-31T18:43:57.073+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.160+0000] {override.py:1900} INFO - Created Permission View: can read on Task Reschedules
airflow-webserver-1  | [2024-10-31T18:43:57.171+0000] {override.py:1951} INFO - Added Permission can read on Task Reschedules to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.188+0000] {override.py:1900} INFO - Created Permission View: menu access on Task Reschedules
airflow-webserver-1  | [2024-10-31T18:43:57.198+0000] {override.py:1951} INFO - Added Permission menu access on Task Reschedules to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.272+0000] {override.py:1900} INFO - Created Permission View: can read on Triggers
airflow-webserver-1  | [2024-10-31T18:43:57.282+0000] {override.py:1951} INFO - Added Permission can read on Triggers to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.292+0000] {override.py:1900} INFO - Created Permission View: menu access on Triggers
airflow-webserver-1  | [2024-10-31T18:43:57.301+0000] {override.py:1951} INFO - Added Permission menu access on Triggers to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.337+0000] {override.py:1900} INFO - Created Permission View: can read on Configurations
airflow-webserver-1  | [2024-10-31T18:43:57.345+0000] {override.py:1951} INFO - Added Permission can read on Configurations to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.355+0000] {override.py:1900} INFO - Created Permission View: menu access on Configurations
airflow-webserver-1  | [2024-10-31T18:43:57.363+0000] {override.py:1951} INFO - Added Permission menu access on Configurations to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.424+0000] {override.py:1900} INFO - Created Permission View: can create on Connections
airflow-webserver-1  | [2024-10-31T18:43:57.433+0000] {override.py:1951} INFO - Added Permission can create on Connections to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.442+0000] {override.py:1900} INFO - Created Permission View: can read on Connections
airflow-webserver-1  | [2024-10-31T18:43:57.451+0000] {override.py:1951} INFO - Added Permission can read on Connections to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.461+0000] {override.py:1900} INFO - Created Permission View: can edit on Connections
airflow-webserver-1  | [2024-10-31T18:43:57.470+0000] {override.py:1951} INFO - Added Permission can edit on Connections to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.480+0000] {override.py:1900} INFO - Created Permission View: can delete on Connections
airflow-webserver-1  | [2024-10-31T18:43:57.489+0000] {override.py:1951} INFO - Added Permission can delete on Connections to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.499+0000] {override.py:1900} INFO - Created Permission View: menu access on Connections
airflow-webserver-1  | [2024-10-31T18:43:57.508+0000] {override.py:1951} INFO - Added Permission menu access on Connections to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.572+0000] {override.py:1900} INFO - Created Permission View: can read on SLA Misses
airflow-webserver-1  | [2024-10-31T18:43:57.582+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.592+0000] {override.py:1900} INFO - Created Permission View: menu access on SLA Misses
airflow-webserver-1  | [2024-10-31T18:43:57.603+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.613+0000] {override.py:1900} INFO - Created Permission View: can delete on SLA Misses
airflow-webserver-1  | [2024-10-31T18:43:57.623+0000] {override.py:1951} INFO - Added Permission can delete on SLA Misses to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.634+0000] {override.py:1900} INFO - Created Permission View: can edit on SLA Misses
airflow-webserver-1  | [2024-10-31T18:43:57.644+0000] {override.py:1951} INFO - Added Permission can edit on SLA Misses to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.686+0000] {override.py:1900} INFO - Created Permission View: can read on Plugins
airflow-webserver-1  | [2024-10-31T18:43:57.698+0000] {override.py:1951} INFO - Added Permission can read on Plugins to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.713+0000] {override.py:1900} INFO - Created Permission View: menu access on Plugins
airflow-webserver-1  | [2024-10-31T18:43:57.725+0000] {override.py:1951} INFO - Added Permission menu access on Plugins to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.772+0000] {override.py:1900} INFO - Created Permission View: can read on Providers
airflow-webserver-1  | [2024-10-31T18:43:57.783+0000] {override.py:1951} INFO - Added Permission can read on Providers to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.797+0000] {override.py:1900} INFO - Created Permission View: menu access on Providers
airflow-webserver-1  | [2024-10-31T18:43:57.808+0000] {override.py:1951} INFO - Added Permission menu access on Providers to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.886+0000] {override.py:1900} INFO - Created Permission View: can create on Pools
airflow-webserver-1  | [2024-10-31T18:43:57.897+0000] {override.py:1951} INFO - Added Permission can create on Pools to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.910+0000] {override.py:1900} INFO - Created Permission View: can read on Pools
airflow-webserver-1  | [2024-10-31T18:43:57.922+0000] {override.py:1951} INFO - Added Permission can read on Pools to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.936+0000] {override.py:1900} INFO - Created Permission View: can edit on Pools
airflow-webserver-1  | [2024-10-31T18:43:57.948+0000] {override.py:1951} INFO - Added Permission can edit on Pools to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.960+0000] {override.py:1900} INFO - Created Permission View: can delete on Pools
airflow-webserver-1  | [2024-10-31T18:43:57.971+0000] {override.py:1951} INFO - Added Permission can delete on Pools to role Admin
airflow-webserver-1  | [2024-10-31T18:43:57.983+0000] {override.py:1900} INFO - Created Permission View: menu access on Pools
airflow-webserver-1  | [2024-10-31T18:43:57.994+0000] {override.py:1951} INFO - Added Permission menu access on Pools to role Admin
airflow-webserver-1  | [2024-10-31T18:43:58.068+0000] {override.py:1900} INFO - Created Permission View: can read on XComs
airflow-webserver-1  | [2024-10-31T18:43:58.077+0000] {override.py:1951} INFO - Added Permission can read on XComs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:58.088+0000] {override.py:1900} INFO - Created Permission View: can delete on XComs
airflow-webserver-1  | [2024-10-31T18:43:58.101+0000] {override.py:1951} INFO - Added Permission can delete on XComs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:58.112+0000] {override.py:1900} INFO - Created Permission View: menu access on XComs
airflow-webserver-1  | [2024-10-31T18:43:58.122+0000] {override.py:1951} INFO - Added Permission menu access on XComs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:58.170+0000] {override.py:1900} INFO - Created Permission View: menu access on DAG Dependencies
airflow-webserver-1  | [2024-10-31T18:43:58.180+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role Admin
airflow-webserver-1  | [2024-10-31T18:43:58.241+0000] {override.py:1900} INFO - Created Permission View: menu access on DAGs
airflow-webserver-1  | [2024-10-31T18:43:58.256+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role Admin
airflow-webserver-1  | [2024-10-31T18:43:58.283+0000] {override.py:1900} INFO - Created Permission View: menu access on Cluster Activity
airflow-webserver-1  | [2024-10-31T18:43:58.295+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role Admin
airflow-webserver-1  | [2024-10-31T18:43:58.327+0000] {override.py:1900} INFO - Created Permission View: menu access on Datasets
airflow-webserver-1  | [2024-10-31T18:43:58.348+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role Admin
airflow-webserver-1  | [2024-10-31T18:43:58.390+0000] {override.py:1900} INFO - Created Permission View: menu access on Documentation
airflow-webserver-1  | [2024-10-31T18:43:58.420+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role Admin
airflow-webserver-1  | [2024-10-31T18:43:58.463+0000] {override.py:1900} INFO - Created Permission View: menu access on Docs
airflow-webserver-1  | [2024-10-31T18:43:58.486+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role Admin
airflow-scheduler-1  | [2024-10-31T18:43:59.349+0000] {executor_loader.py:254} INFO - Loaded executor: LocalExecutor
airflow-scheduler-1  | [2024-10-31T18:43:59.499+0000] {scheduler_job_runner.py:935} INFO - Starting the scheduler
airflow-scheduler-1  | [2024-10-31T18:43:59.501+0000] {scheduler_job_runner.py:942} INFO - Processing each file at most -1 times
airflow-scheduler-1  | [2024-10-31T18:43:59.883+0000] {manager.py:174} INFO - Launched DagFileProcessorManager with pid: 195
airflow-scheduler-1  | [2024-10-31T18:43:59.887+0000] {scheduler_job_runner.py:1847} INFO - Adopting or resetting orphaned tasks for active dag runs
airflow-scheduler-1  | [2024-10-31T18:43:59.899+0000] {settings.py:63} INFO - Configured default timezone UTC
airflow-webserver-1  | [2024-10-31T18:44:03.659+0000] {override.py:1900} INFO - Created Permission View: can read on DAGs
airflow-webserver-1  | [2024-10-31T18:44:03.674+0000] {override.py:1900} INFO - Created Permission View: can delete on DAGs
airflow-webserver-1  | [2024-10-31T18:44:03.688+0000] {override.py:1900} INFO - Created Permission View: can edit on DAGs
airflow-webserver-1  | [2024-10-31T18:44:03.717+0000] {override.py:1496} INFO - Inserted Role: Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.730+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.743+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Dependencies
airflow-webserver-1  | [2024-10-31T18:44:03.750+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.767+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Code
airflow-webserver-1  | [2024-10-31T18:44:03.773+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.779+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.792+0000] {override.py:1900} INFO - Created Permission View: can read on Datasets
airflow-webserver-1  | [2024-10-31T18:44:03.798+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.810+0000] {override.py:1900} INFO - Created Permission View: can read on Cluster Activity
airflow-webserver-1  | [2024-10-31T18:44:03.816+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.821+0000] {override.py:1951} INFO - Added Permission can read on Pools to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.835+0000] {override.py:1900} INFO - Created Permission View: can read on ImportError
airflow-webserver-1  | [2024-10-31T18:44:03.841+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.855+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Warnings
airflow-webserver-1  | [2024-10-31T18:44:03.861+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.866+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.872+0000] {override.py:1951} INFO - Added Permission can read on My Password to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.879+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.884+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.890+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.897+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.902+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.918+0000] {override.py:1900} INFO - Created Permission View: can read on Task Logs
airflow-webserver-1  | [2024-10-31T18:44:03.923+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.929+0000] {override.py:1951} INFO - Added Permission can read on XComs to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.941+0000] {override.py:1900} INFO - Created Permission View: can read on Website
airflow-webserver-1  | [2024-10-31T18:44:03.947+0000] {override.py:1951} INFO - Added Permission can read on Website to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.952+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.958+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.964+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.970+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.976+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.984+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.990+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:03.997+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:04.002+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:04.008+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:04.015+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role Viewer
airflow-webserver-1  | [2024-10-31T18:44:04.022+0000] {override.py:1496} INFO - Inserted Role: User
airflow-webserver-1  | [2024-10-31T18:44:04.031+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.043+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role User
airflow-webserver-1  | [2024-10-31T18:44:04.053+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role User
airflow-webserver-1  | [2024-10-31T18:44:04.060+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.070+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role User
airflow-webserver-1  | [2024-10-31T18:44:04.080+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role User
airflow-webserver-1  | [2024-10-31T18:44:04.086+0000] {override.py:1951} INFO - Added Permission can read on Pools to role User
airflow-webserver-1  | [2024-10-31T18:44:04.098+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role User
airflow-webserver-1  | [2024-10-31T18:44:04.108+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role User
airflow-webserver-1  | [2024-10-31T18:44:04.114+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.121+0000] {override.py:1951} INFO - Added Permission can read on My Password to role User
airflow-webserver-1  | [2024-10-31T18:44:04.127+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role User
airflow-webserver-1  | [2024-10-31T18:44:04.134+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role User
airflow-webserver-1  | [2024-10-31T18:44:04.140+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role User
airflow-webserver-1  | [2024-10-31T18:44:04.147+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role User
airflow-webserver-1  | [2024-10-31T18:44:04.154+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role User
airflow-webserver-1  | [2024-10-31T18:44:04.166+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.172+0000] {override.py:1951} INFO - Added Permission can read on XComs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.186+0000] {override.py:1951} INFO - Added Permission can read on Website to role User
airflow-webserver-1  | [2024-10-31T18:44:04.193+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role User
airflow-webserver-1  | [2024-10-31T18:44:04.201+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.209+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role User
airflow-webserver-1  | [2024-10-31T18:44:04.216+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.224+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role User
airflow-webserver-1  | [2024-10-31T18:44:04.232+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role User
airflow-webserver-1  | [2024-10-31T18:44:04.239+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role User
airflow-webserver-1  | [2024-10-31T18:44:04.248+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.256+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.266+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role User
airflow-webserver-1  | [2024-10-31T18:44:04.275+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role User
airflow-webserver-1  | [2024-10-31T18:44:04.285+0000] {override.py:1951} INFO - Added Permission can edit on DAGs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.293+0000] {override.py:1951} INFO - Added Permission can delete on DAGs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.301+0000] {override.py:1951} INFO - Added Permission can create on Task Instances to role User
airflow-webserver-1  | [2024-10-31T18:44:04.309+0000] {override.py:1951} INFO - Added Permission can edit on Task Instances to role User
airflow-webserver-1  | [2024-10-31T18:44:04.317+0000] {override.py:1951} INFO - Added Permission can delete on Task Instances to role User
airflow-webserver-1  | [2024-10-31T18:44:04.324+0000] {override.py:1951} INFO - Added Permission can create on DAG Runs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.332+0000] {override.py:1951} INFO - Added Permission can edit on DAG Runs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.338+0000] {override.py:1951} INFO - Added Permission can delete on DAG Runs to role User
airflow-webserver-1  | [2024-10-31T18:44:04.352+0000] {override.py:1900} INFO - Created Permission View: can create on Datasets
airflow-webserver-1  | [2024-10-31T18:44:04.358+0000] {override.py:1951} INFO - Added Permission can create on Datasets to role User
airflow-webserver-1  | [2024-10-31T18:44:04.366+0000] {override.py:1496} INFO - Inserted Role: Op
airflow-webserver-1  | [2024-10-31T18:44:04.373+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.385+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.396+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.401+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.412+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.421+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.427+0000] {override.py:1951} INFO - Added Permission can read on Pools to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.438+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.448+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.453+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.458+0000] {override.py:1951} INFO - Added Permission can read on My Password to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.464+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.469+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.475+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.481+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.486+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.497+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.502+0000] {override.py:1951} INFO - Added Permission can read on XComs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.513+0000] {override.py:1951} INFO - Added Permission can read on Website to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.518+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.524+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.530+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.535+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.540+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.546+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.551+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.557+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.563+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.568+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.574+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.580+0000] {override.py:1951} INFO - Added Permission can edit on DAGs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.585+0000] {override.py:1951} INFO - Added Permission can delete on DAGs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.590+0000] {override.py:1951} INFO - Added Permission can create on Task Instances to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.596+0000] {override.py:1951} INFO - Added Permission can edit on Task Instances to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.601+0000] {override.py:1951} INFO - Added Permission can delete on Task Instances to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.607+0000] {override.py:1951} INFO - Added Permission can create on DAG Runs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.612+0000] {override.py:1951} INFO - Added Permission can edit on DAG Runs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.618+0000] {override.py:1951} INFO - Added Permission can delete on DAG Runs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.629+0000] {override.py:1951} INFO - Added Permission can create on Datasets to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.634+0000] {override.py:1951} INFO - Added Permission can read on Configurations to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.639+0000] {override.py:1951} INFO - Added Permission menu access on Admin to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.644+0000] {override.py:1951} INFO - Added Permission menu access on Configurations to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.650+0000] {override.py:1951} INFO - Added Permission menu access on Connections to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.656+0000] {override.py:1951} INFO - Added Permission menu access on Pools to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.661+0000] {override.py:1951} INFO - Added Permission menu access on Plugins to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.667+0000] {override.py:1951} INFO - Added Permission menu access on Variables to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.672+0000] {override.py:1951} INFO - Added Permission menu access on Providers to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.678+0000] {override.py:1951} INFO - Added Permission menu access on XComs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.684+0000] {override.py:1951} INFO - Added Permission can create on Connections to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.690+0000] {override.py:1951} INFO - Added Permission can read on Connections to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.696+0000] {override.py:1951} INFO - Added Permission can edit on Connections to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.701+0000] {override.py:1951} INFO - Added Permission can delete on Connections to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.707+0000] {override.py:1951} INFO - Added Permission can create on Pools to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.713+0000] {override.py:1951} INFO - Added Permission can edit on Pools to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.719+0000] {override.py:1951} INFO - Added Permission can delete on Pools to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.724+0000] {override.py:1951} INFO - Added Permission can read on Plugins to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.731+0000] {override.py:1951} INFO - Added Permission can read on Providers to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.736+0000] {override.py:1951} INFO - Added Permission can create on Variables to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.742+0000] {override.py:1951} INFO - Added Permission can read on Variables to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.748+0000] {override.py:1951} INFO - Added Permission can edit on Variables to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.753+0000] {override.py:1951} INFO - Added Permission can delete on Variables to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.760+0000] {override.py:1951} INFO - Added Permission can delete on XComs to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.772+0000] {override.py:1900} INFO - Created Permission View: can delete on Datasets
airflow-webserver-1  | [2024-10-31T18:44:04.777+0000] {override.py:1951} INFO - Added Permission can delete on Datasets to role Op
airflow-webserver-1  | [2024-10-31T18:44:04.788+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.798+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.808+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.819+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.830+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.840+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.851+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.862+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.872+0000] {override.py:1951} INFO - Added Permission can read on Website to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.878+0000] {override.py:1951} INFO - Added Permission can edit on DAGs to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.884+0000] {override.py:1951} INFO - Added Permission can delete on DAGs to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.895+0000] {override.py:1951} INFO - Added Permission can create on Datasets to role Admin
airflow-webserver-1  | [2024-10-31T18:44:04.905+0000] {override.py:1951} INFO - Added Permission can delete on Datasets to role Admin
airflow-webserver-1  | [2024-10-31T18:44:15.717+0000] {providers_manager.py:287} INFO - Optional provider feature disabled when importing 'airflow.providers.google.leveldb.hooks.leveldb.LevelDBHook' from 'apache-airflow-providers-google' package
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:44:36 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:45:06 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:45:36 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:46:06 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:27 +0000] "GET / HTTP/1.1" 302 197 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:27 +0000] "GET /home HTTP/1.1" 302 285 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:28 +0000] "GET /login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome HTTP/1.1" 200 18637 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:28 +0000] "GET /static/appbuilder/css/bootstrap.min.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:28 +0000] "GET /static/appbuilder/css/fontawesome/fontawesome.min.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:29 +0000] "GET /static/appbuilder/css/fontawesome/solid.min.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:29 +0000] "GET /static/appbuilder/css/fontawesome/v4-shims.min.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:29 +0000] "GET /static/appbuilder/css/fontawesome/brands.min.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:29 +0000] "GET /static/appbuilder/css/fontawesome/regular.min.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:29 +0000] "GET /static/appbuilder/css/bootstrap-datepicker/bootstrap-datepicker3.min.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:29 +0000] "GET /static/appbuilder/css/select2/select2.min.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:29 +0000] "GET /static/appbuilder/css/select2/select2-bootstrap.min.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:29 +0000] "GET /static/appbuilder/css/flags/flags16.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:29 +0000] "GET /static/appbuilder/css/ab.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:29 +0000] "GET /static/dist/airflowDefaultTheme.59b664aabc63e0ea7281.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:30 +0000] "GET /static/dist/materialIcons.b2aed9f877c993431fde.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:30 +0000] "GET /static/dist/main.8461584ab30f513901c2.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:30 +0000] "GET /static/dist/loadingDots.919e5f1534f5f57b7eb4.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:30 +0000] "GET /static/dist/bootstrap-datetimepicker.min.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:30 +0000] "GET /static/dist/flash.65805954dad3c27a3986.css HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:30 +0000] "GET /static/appbuilder/js/jquery-latest.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:30 +0000] "GET /static/appbuilder/js/ab_filters.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:31 +0000] "GET /static/appbuilder/js/ab_actions.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:31 +0000] "GET /static/appbuilder/js/bootstrap.min.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:31 +0000] "GET /static/appbuilder/js/bootstrap-datepicker/bootstrap-datepicker.min.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:31 +0000] "GET /static/appbuilder/js/select2/select2.min.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:31 +0000] "GET /static/appbuilder/js/ab.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:31 +0000] "GET /static/dist/moment.af388b38f7330f0c8f38.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:31 +0000] "GET /static/appbuilder/css/webfonts/fa-solid-900.woff2 HTTP/1.1" 200 0 "http://localhost:8080/static/appbuilder/css/fontawesome/solid.min.css" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:31 +0000] "GET /static/dist/main.8461584ab30f513901c2.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:31 +0000] "GET /static/dist/bootstrap-datetimepicker.min.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:31 +0000] "GET /static/dist/bootstrap3-typeahead.min.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:32 +0000] "GET /static/dist/toggleTheme.acf125721c09f1a04027.js HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:32 +0000] "GET /static/appbuilder/css/webfonts/fa-regular-400.woff2 HTTP/1.1" 200 0 "http://localhost:8080/static/appbuilder/css/fontawesome/regular.min.css" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:32 +0000] "GET /static/pin_32.png HTTP/1.1" 200 0 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:46:36 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | [2024-10-31T18:46:38.515+0000] {override.py:2203} INFO - Login Failed for user: admin
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:38 +0000] "POST /login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome HTTP/1.1" 302 285 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:39 +0000] "GET /login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome HTTP/1.1" 200 18824 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | [2024-10-31T18:46:45.412+0000] {override.py:1667} INFO - Updated user Airflow Admin
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:45 +0000] "POST /login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome HTTP/1.1" 302 239 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:45 +0000] "GET /home HTTP/1.1" 200 581307 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:46 +0000] "GET /static/dist/switch.5dc547a0258cf18ca1e2.css HTTP/1.1" 200 0 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:46 +0000] "GET /static/dist/dags.8eecf21a60bc28e1511a.css HTTP/1.1" 200 0 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:46 +0000] "GET /static/dist/dags.8eecf21a60bc28e1511a.js HTTP/1.1" 200 0 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:46 +0000] "GET /static/dist/d3.min.js HTTP/1.1" 200 0 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:49 +0000] "POST /blocked HTTP/1.1" 200 2 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:49 +0000] "POST /task_stats HTTP/1.1" 200 38925 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:49 +0000] "POST /last_dagruns HTTP/1.1" 200 2 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:46:49 +0000] "POST /dag_stats HTTP/1.1" 200 12280 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:47:06 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:08 +0000] "GET /dags/conditional_dataset_and_time_based_timetable/grid HTTP/1.1" 200 9433 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:08 +0000] "GET /static/dist/dag.a9880361b5bfe142d2b4.js HTTP/1.1" 200 0 "http://localhost:8080/dags/conditional_dataset_and_time_based_timetable/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:08 +0000] "GET /static/dist/grid.3c7e7533df41f10edc56.js HTTP/1.1" 200 0 "http://localhost:8080/dags/conditional_dataset_and_time_based_timetable/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:10 +0000] "GET /object/grid_data?dag_id=conditional_dataset_and_time_based_timetable&num_runs=25 HTTP/1.1" 200 360 "http://localhost:8080/dags/conditional_dataset_and_time_based_timetable/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:10 +0000] "GET /object/next_run_datasets/conditional_dataset_and_time_based_timetable HTTP/1.1" 200 209 "http://localhost:8080/dags/conditional_dataset_and_time_based_timetable/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:10 +0000] "GET /api/v1/dags/conditional_dataset_and_time_based_timetable HTTP/1.1" 200 1369 "http://localhost:8080/dags/conditional_dataset_and_time_based_timetable/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:10 +0000] "GET /api/v1/dags/conditional_dataset_and_time_based_timetable/details HTTP/1.1" 200 1837 "http://localhost:8080/dags/conditional_dataset_and_time_based_timetable/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:27 +0000] "GET /home HTTP/1.1" 200 581307 "http://localhost:8080/login/?next=http%3A%2F%2Flocalhost%3A8080%2Fhome" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:30 +0000] "POST /blocked HTTP/1.1" 200 2 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:30 +0000] "POST /dag_stats HTTP/1.1" 200 12280 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:31 +0000] "POST /last_dagruns HTTP/1.1" 200 2 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:31 +0000] "POST /task_stats HTTP/1.1" 200 38925 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:33 +0000] "GET /object/next_run_datasets/consume_1_or_2_with_dataset_expressions HTTP/1.1" 200 209 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:34 +0000] "GET /object/next_run_datasets/consume_1_or_2_with_dataset_expressions HTTP/1.1" 200 209 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:35 +0000] "GET /object/next_run_datasets/consume_1_and_2_with_dataset_expressions HTTP/1.1" 200 209 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:47:36 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:54 +0000] "GET /dags/tutorial/grid HTTP/1.1" 200 9596 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:54 +0000] "GET /object/grid_data?dag_id=tutorial&num_runs=25 HTTP/1.1" 200 649 "http://localhost:8080/dags/tutorial/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:55 +0000] "GET /api/v1/dags/tutorial HTTP/1.1" 200 1248 "http://localhost:8080/dags/tutorial/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:55 +0000] "GET /object/next_run_datasets/tutorial HTTP/1.1" 200 39 "http://localhost:8080/dags/tutorial/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:47:55 +0000] "GET /api/v1/dags/tutorial/details HTTP/1.1" 200 1682 "http://localhost:8080/dags/tutorial/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:06 +0000] "POST /paused?is_paused=true&dag_id=tutorial HTTP/1.1" 200 2 "http://localhost:8080/dags/tutorial/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:48:07 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-scheduler-1  | [2024-10-31T18:48:07.974+0000] {dag.py:4180} INFO - Setting next_dagrun for tutorial to 2024-10-31 00:00:00+00:00, run_after=2024-11-01 00:00:00+00:00
airflow-scheduler-1  | Dag run  in running state
airflow-scheduler-1  | Dag information Queued at: 2024-10-31 18:48:07.954738+00:00 hash info: 633bede901b5b4d8acfa89a66a6d158f
airflow-scheduler-1  | [2024-10-31T18:48:08.049+0000] {scheduler_job_runner.py:423} INFO - 1 tasks up for execution:
airflow-scheduler-1  | 	<TaskInstance: tutorial.print_date scheduled__2024-10-30T00:00:00+00:00 [scheduled]>
airflow-scheduler-1  | [2024-10-31T18:48:08.050+0000] {scheduler_job_runner.py:495} INFO - DAG tutorial has 0/16 running and queued tasks
airflow-scheduler-1  | [2024-10-31T18:48:08.050+0000] {scheduler_job_runner.py:634} INFO - Setting the following tasks to queued state:
airflow-scheduler-1  | 	<TaskInstance: tutorial.print_date scheduled__2024-10-30T00:00:00+00:00 [scheduled]>
airflow-scheduler-1  | [2024-10-31T18:48:08.054+0000] {scheduler_job_runner.py:736} INFO - Trying to enqueue tasks: [<TaskInstance: tutorial.print_date scheduled__2024-10-30T00:00:00+00:00 [scheduled]>] for executor: LocalExecutor(parallelism=32)
airflow-scheduler-1  | [2024-10-31T18:48:08.055+0000] {scheduler_job_runner.py:680} INFO - Sending TaskInstanceKey(dag_id='tutorial', task_id='print_date', run_id='scheduled__2024-10-30T00:00:00+00:00', try_number=1, map_index=-1) to LocalExecutor with priority 3 and queue default
airflow-scheduler-1  | [2024-10-31T18:48:08.056+0000] {base_executor.py:168} INFO - Adding to queue: ['airflow', 'tasks', 'run', 'tutorial', 'print_date', 'scheduled__2024-10-30T00:00:00+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:08.061+0000] {local_executor.py:93} INFO - QueuedLocalWorker running ['airflow', 'tasks', 'run', 'tutorial', 'print_date', 'scheduled__2024-10-30T00:00:00+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:08.126+0000] {dagbag.py:588} INFO - Filling up the DagBag from /home/***/.local/lib/python3.12/site-packages/***/example_dags/tutorial.py
airflow-scheduler-1  | [2024-10-31T18:48:08.752+0000] {task_command.py:467} INFO - Running <TaskInstance: tutorial.print_date scheduled__2024-10-30T00:00:00+00:00 [queued]> on host fa2e009679e0
airflow-scheduler-1  | [2024-10-31T18:48:10.201+0000] {scheduler_job_runner.py:423} INFO - 2 tasks up for execution:
airflow-scheduler-1  | 	<TaskInstance: tutorial.sleep scheduled__2024-10-30T00:00:00+00:00 [scheduled]>
airflow-scheduler-1  | 	<TaskInstance: tutorial.templated scheduled__2024-10-30T00:00:00+00:00 [scheduled]>
airflow-scheduler-1  | [2024-10-31T18:48:10.201+0000] {scheduler_job_runner.py:495} INFO - DAG tutorial has 0/16 running and queued tasks
airflow-scheduler-1  | [2024-10-31T18:48:10.201+0000] {scheduler_job_runner.py:495} INFO - DAG tutorial has 1/16 running and queued tasks
airflow-scheduler-1  | [2024-10-31T18:48:10.202+0000] {scheduler_job_runner.py:634} INFO - Setting the following tasks to queued state:
airflow-scheduler-1  | 	<TaskInstance: tutorial.sleep scheduled__2024-10-30T00:00:00+00:00 [scheduled]>
airflow-scheduler-1  | 	<TaskInstance: tutorial.templated scheduled__2024-10-30T00:00:00+00:00 [scheduled]>
airflow-scheduler-1  | [2024-10-31T18:48:10.205+0000] {scheduler_job_runner.py:736} INFO - Trying to enqueue tasks: [<TaskInstance: tutorial.sleep scheduled__2024-10-30T00:00:00+00:00 [scheduled]>, <TaskInstance: tutorial.templated scheduled__2024-10-30T00:00:00+00:00 [scheduled]>] for executor: LocalExecutor(parallelism=32)
airflow-scheduler-1  | [2024-10-31T18:48:10.206+0000] {scheduler_job_runner.py:680} INFO - Sending TaskInstanceKey(dag_id='tutorial', task_id='sleep', run_id='scheduled__2024-10-30T00:00:00+00:00', try_number=1, map_index=-1) to LocalExecutor with priority 1 and queue default
airflow-scheduler-1  | [2024-10-31T18:48:10.206+0000] {base_executor.py:168} INFO - Adding to queue: ['airflow', 'tasks', 'run', 'tutorial', 'sleep', 'scheduled__2024-10-30T00:00:00+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:10.207+0000] {scheduler_job_runner.py:680} INFO - Sending TaskInstanceKey(dag_id='tutorial', task_id='templated', run_id='scheduled__2024-10-30T00:00:00+00:00', try_number=1, map_index=-1) to LocalExecutor with priority 1 and queue default
airflow-scheduler-1  | [2024-10-31T18:48:10.207+0000] {base_executor.py:168} INFO - Adding to queue: ['airflow', 'tasks', 'run', 'tutorial', 'templated', 'scheduled__2024-10-30T00:00:00+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:10.212+0000] {scheduler_job_runner.py:764} INFO - Received executor event with state success for task instance TaskInstanceKey(dag_id='tutorial', task_id='print_date', run_id='scheduled__2024-10-30T00:00:00+00:00', try_number=1, map_index=-1)
airflow-scheduler-1  | [2024-10-31T18:48:10.211+0000] {local_executor.py:93} INFO - QueuedLocalWorker running ['airflow', 'tasks', 'run', 'tutorial', 'sleep', 'scheduled__2024-10-30T00:00:00+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:10.212+0000] {local_executor.py:93} INFO - QueuedLocalWorker running ['airflow', 'tasks', 'run', 'tutorial', 'templated', 'scheduled__2024-10-30T00:00:00+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:10.224+0000] {scheduler_job_runner.py:801} INFO - TaskInstance Finished: dag_id=tutorial, task_id=print_date, run_id=scheduled__2024-10-30T00:00:00+00:00, map_index=-1, run_start_date=2024-10-31 18:48:08.865799+00:00, run_end_date=2024-10-31 18:48:09.104734+00:00, run_duration=0.238935, state=success, executor=LocalExecutor(parallelism=32), executor_state=success, try_number=1, max_tries=1, job_id=2, pool=default_pool, queue=default, priority_weight=3, operator=BashOperator, queued_dttm=2024-10-31 18:48:08.051939+00:00, queued_by_job_id=1, pid=2554
airflow-scheduler-1  | [2024-10-31T18:48:10.254+0000] {dagbag.py:588} INFO - Filling up the DagBag from /home/***/.local/lib/python3.12/site-packages/***/example_dags/tutorial.py
airflow-scheduler-1  | [2024-10-31T18:48:10.255+0000] {dagbag.py:588} INFO - Filling up the DagBag from /home/***/.local/lib/python3.12/site-packages/***/example_dags/tutorial.py
airflow-scheduler-1  | [2024-10-31T18:48:10.818+0000] {task_command.py:467} INFO - Running <TaskInstance: tutorial.templated scheduled__2024-10-30T00:00:00+00:00 [queued]> on host fa2e009679e0
airflow-scheduler-1  | [2024-10-31T18:48:10.832+0000] {task_command.py:467} INFO - Running <TaskInstance: tutorial.sleep scheduled__2024-10-30T00:00:00+00:00 [queued]> on host fa2e009679e0
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:11 +0000] "POST /paused?is_paused=false&dag_id=tutorial HTTP/1.1" 200 2 "http://localhost:8080/dags/tutorial/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:48:11.974+0000] {scheduler_job_runner.py:764} INFO - Received executor event with state success for task instance TaskInstanceKey(dag_id='tutorial', task_id='templated', run_id='scheduled__2024-10-30T00:00:00+00:00', try_number=1, map_index=-1)
airflow-scheduler-1  | [2024-10-31T18:48:11.982+0000] {scheduler_job_runner.py:801} INFO - TaskInstance Finished: dag_id=tutorial, task_id=templated, run_id=scheduled__2024-10-30T00:00:00+00:00, map_index=-1, run_start_date=2024-10-31 18:48:10.914841+00:00, run_end_date=2024-10-31 18:48:11.213496+00:00, run_duration=0.298655, state=success, executor=LocalExecutor(parallelism=32), executor_state=success, try_number=1, max_tries=1, job_id=3, pool=default_pool, queue=default, priority_weight=1, operator=BashOperator, queued_dttm=2024-10-31 18:48:10.203503+00:00, queued_by_job_id=1, pid=2584
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:13 +0000] "POST /paused?is_paused=true&dag_id=tutorial HTTP/1.1" 200 2 "http://localhost:8080/dags/tutorial/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:48:16.627+0000] {dagrun.py:854} INFO - Marking run <DagRun tutorial @ 2024-10-30 00:00:00+00:00: scheduled__2024-10-30T00:00:00+00:00, state:running, queued_at: 2024-10-31 18:48:07.954738+00:00. externally triggered: False> successful
airflow-scheduler-1  | Dag run in success state
airflow-scheduler-1  | Dag run start:2024-10-31 18:48:07.987561+00:00 end:2024-10-31 18:48:16.629300+00:00
airflow-scheduler-1  | [2024-10-31T18:48:16.629+0000] {dagrun.py:905} INFO - DagRun Finished: dag_id=tutorial, execution_date=2024-10-30 00:00:00+00:00, run_id=scheduled__2024-10-30T00:00:00+00:00, run_start_date=2024-10-31 18:48:07.987561+00:00, run_end_date=2024-10-31 18:48:16.629300+00:00, run_duration=8.641739, state=success, external_trigger=False, run_type=scheduled, data_interval_start=2024-10-30 00:00:00+00:00, data_interval_end=2024-10-31 00:00:00+00:00, dag_hash=633bede901b5b4d8acfa89a66a6d158f
airflow-scheduler-1  | [2024-10-31T18:48:16.638+0000] {dag.py:4180} INFO - Setting next_dagrun for tutorial to 2024-10-31 00:00:00+00:00, run_after=2024-11-01 00:00:00+00:00
airflow-scheduler-1  | [2024-10-31T18:48:16.658+0000] {scheduler_job_runner.py:764} INFO - Received executor event with state success for task instance TaskInstanceKey(dag_id='tutorial', task_id='sleep', run_id='scheduled__2024-10-30T00:00:00+00:00', try_number=1, map_index=-1)
airflow-scheduler-1  | [2024-10-31T18:48:16.665+0000] {scheduler_job_runner.py:801} INFO - TaskInstance Finished: dag_id=tutorial, task_id=sleep, run_id=scheduled__2024-10-30T00:00:00+00:00, map_index=-1, run_start_date=2024-10-31 18:48:10.930153+00:00, run_end_date=2024-10-31 18:48:16.228748+00:00, run_duration=5.298595, state=success, executor=LocalExecutor(parallelism=32), executor_state=success, try_number=1, max_tries=3, job_id=4, pool=default_pool, queue=default, priority_weight=1, operator=BashOperator, queued_dttm=2024-10-31 18:48:10.203503+00:00, queued_by_job_id=1, pid=2586
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:16 +0000] "POST /dags/tutorial/trigger?origin=%2Fdags%2Ftutorial%2Fgrid HTTP/1.1" 302 387 "http://localhost:8080/dags/tutorial/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:16 +0000] "GET /dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00 HTTP/1.1" 200 9723 "http://localhost:8080/dags/tutorial/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | Dag run  in running state
airflow-scheduler-1  | Dag information Queued at: 2024-10-31 18:48:16.727879+00:00 hash info: 633bede901b5b4d8acfa89a66a6d158f
airflow-scheduler-1  | [2024-10-31T18:48:17.065+0000] {scheduler_job_runner.py:423} INFO - 1 tasks up for execution:
airflow-scheduler-1  | 	<TaskInstance: tutorial.print_date manual__2024-10-31T18:48:16.678180+00:00 [scheduled]>
airflow-scheduler-1  | [2024-10-31T18:48:17.066+0000] {scheduler_job_runner.py:495} INFO - DAG tutorial has 0/16 running and queued tasks
airflow-scheduler-1  | [2024-10-31T18:48:17.066+0000] {scheduler_job_runner.py:634} INFO - Setting the following tasks to queued state:
airflow-scheduler-1  | 	<TaskInstance: tutorial.print_date manual__2024-10-31T18:48:16.678180+00:00 [scheduled]>
airflow-scheduler-1  | [2024-10-31T18:48:17.069+0000] {scheduler_job_runner.py:736} INFO - Trying to enqueue tasks: [<TaskInstance: tutorial.print_date manual__2024-10-31T18:48:16.678180+00:00 [scheduled]>] for executor: LocalExecutor(parallelism=32)
airflow-scheduler-1  | [2024-10-31T18:48:17.070+0000] {scheduler_job_runner.py:680} INFO - Sending TaskInstanceKey(dag_id='tutorial', task_id='print_date', run_id='manual__2024-10-31T18:48:16.678180+00:00', try_number=1, map_index=-1) to LocalExecutor with priority 3 and queue default
airflow-scheduler-1  | [2024-10-31T18:48:17.071+0000] {base_executor.py:168} INFO - Adding to queue: ['airflow', 'tasks', 'run', 'tutorial', 'print_date', 'manual__2024-10-31T18:48:16.678180+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:17.076+0000] {local_executor.py:93} INFO - QueuedLocalWorker running ['airflow', 'tasks', 'run', 'tutorial', 'print_date', 'manual__2024-10-31T18:48:16.678180+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:17.136+0000] {dagbag.py:588} INFO - Filling up the DagBag from /home/***/.local/lib/python3.12/site-packages/***/example_dags/tutorial.py
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:17 +0000] "GET /object/grid_data?dag_id=tutorial&num_runs=25 HTTP/1.1" 200 2965 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:48:18.143+0000] {task_command.py:467} INFO - Running <TaskInstance: tutorial.print_date manual__2024-10-31T18:48:16.678180+00:00 [queued]> on host fa2e009679e0
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:18 +0000] "GET /object/next_run_datasets/tutorial HTTP/1.1" 200 39 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:48:19.292+0000] {scheduler_job_runner.py:423} INFO - 2 tasks up for execution:
airflow-scheduler-1  | 	<TaskInstance: tutorial.sleep manual__2024-10-31T18:48:16.678180+00:00 [scheduled]>
airflow-scheduler-1  | 	<TaskInstance: tutorial.templated manual__2024-10-31T18:48:16.678180+00:00 [scheduled]>
airflow-scheduler-1  | [2024-10-31T18:48:19.293+0000] {scheduler_job_runner.py:495} INFO - DAG tutorial has 0/16 running and queued tasks
airflow-scheduler-1  | [2024-10-31T18:48:19.293+0000] {scheduler_job_runner.py:495} INFO - DAG tutorial has 1/16 running and queued tasks
airflow-scheduler-1  | [2024-10-31T18:48:19.294+0000] {scheduler_job_runner.py:634} INFO - Setting the following tasks to queued state:
airflow-scheduler-1  | 	<TaskInstance: tutorial.sleep manual__2024-10-31T18:48:16.678180+00:00 [scheduled]>
airflow-scheduler-1  | 	<TaskInstance: tutorial.templated manual__2024-10-31T18:48:16.678180+00:00 [scheduled]>
airflow-scheduler-1  | [2024-10-31T18:48:19.296+0000] {scheduler_job_runner.py:736} INFO - Trying to enqueue tasks: [<TaskInstance: tutorial.sleep manual__2024-10-31T18:48:16.678180+00:00 [scheduled]>, <TaskInstance: tutorial.templated manual__2024-10-31T18:48:16.678180+00:00 [scheduled]>] for executor: LocalExecutor(parallelism=32)
airflow-scheduler-1  | [2024-10-31T18:48:19.297+0000] {scheduler_job_runner.py:680} INFO - Sending TaskInstanceKey(dag_id='tutorial', task_id='sleep', run_id='manual__2024-10-31T18:48:16.678180+00:00', try_number=1, map_index=-1) to LocalExecutor with priority 1 and queue default
airflow-scheduler-1  | [2024-10-31T18:48:19.298+0000] {base_executor.py:168} INFO - Adding to queue: ['airflow', 'tasks', 'run', 'tutorial', 'sleep', 'manual__2024-10-31T18:48:16.678180+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:19.298+0000] {scheduler_job_runner.py:680} INFO - Sending TaskInstanceKey(dag_id='tutorial', task_id='templated', run_id='manual__2024-10-31T18:48:16.678180+00:00', try_number=1, map_index=-1) to LocalExecutor with priority 1 and queue default
airflow-scheduler-1  | [2024-10-31T18:48:19.299+0000] {base_executor.py:168} INFO - Adding to queue: ['airflow', 'tasks', 'run', 'tutorial', 'templated', 'manual__2024-10-31T18:48:16.678180+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:19.304+0000] {scheduler_job_runner.py:764} INFO - Received executor event with state success for task instance TaskInstanceKey(dag_id='tutorial', task_id='print_date', run_id='manual__2024-10-31T18:48:16.678180+00:00', try_number=1, map_index=-1)
airflow-scheduler-1  | [2024-10-31T18:48:19.303+0000] {local_executor.py:93} INFO - QueuedLocalWorker running ['airflow', 'tasks', 'run', 'tutorial', 'sleep', 'manual__2024-10-31T18:48:16.678180+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:19.304+0000] {local_executor.py:93} INFO - QueuedLocalWorker running ['airflow', 'tasks', 'run', 'tutorial', 'templated', 'manual__2024-10-31T18:48:16.678180+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/tutorial.py']
airflow-scheduler-1  | [2024-10-31T18:48:19.312+0000] {scheduler_job_runner.py:801} INFO - TaskInstance Finished: dag_id=tutorial, task_id=print_date, run_id=manual__2024-10-31T18:48:16.678180+00:00, map_index=-1, run_start_date=2024-10-31 18:48:18.331058+00:00, run_end_date=2024-10-31 18:48:18.783471+00:00, run_duration=0.452413, state=success, executor=LocalExecutor(parallelism=32), executor_state=success, try_number=1, max_tries=1, job_id=5, pool=default_pool, queue=default, priority_weight=3, operator=BashOperator, queued_dttm=2024-10-31 18:48:17.067761+00:00, queued_by_job_id=1, pid=2750
airflow-scheduler-1  | [2024-10-31T18:48:19.351+0000] {dagbag.py:588} INFO - Filling up the DagBag from /home/***/.local/lib/python3.12/site-packages/***/example_dags/tutorial.py
airflow-scheduler-1  | [2024-10-31T18:48:19.351+0000] {dagbag.py:588} INFO - Filling up the DagBag from /home/***/.local/lib/python3.12/site-packages/***/example_dags/tutorial.py
airflow-scheduler-1  | [2024-10-31T18:48:19.926+0000] {task_command.py:467} INFO - Running <TaskInstance: tutorial.sleep manual__2024-10-31T18:48:16.678180+00:00 [queued]> on host fa2e009679e0
airflow-scheduler-1  | [2024-10-31T18:48:19.933+0000] {task_command.py:467} INFO - Running <TaskInstance: tutorial.templated manual__2024-10-31T18:48:16.678180+00:00 [queued]> on host fa2e009679e0
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:20 +0000] "GET /object/grid_data?dag_id=tutorial&num_runs=25 HTTP/1.1" 200 3186 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:48:20.990+0000] {scheduler_job_runner.py:764} INFO - Received executor event with state success for task instance TaskInstanceKey(dag_id='tutorial', task_id='templated', run_id='manual__2024-10-31T18:48:16.678180+00:00', try_number=1, map_index=-1)
airflow-scheduler-1  | [2024-10-31T18:48:20.998+0000] {scheduler_job_runner.py:801} INFO - TaskInstance Finished: dag_id=tutorial, task_id=templated, run_id=manual__2024-10-31T18:48:16.678180+00:00, map_index=-1, run_start_date=2024-10-31 18:48:20.042036+00:00, run_end_date=2024-10-31 18:48:20.340283+00:00, run_duration=0.298247, state=success, executor=LocalExecutor(parallelism=32), executor_state=success, try_number=1, max_tries=1, job_id=7, pool=default_pool, queue=default, priority_weight=1, operator=BashOperator, queued_dttm=2024-10-31 18:48:19.294973+00:00, queued_by_job_id=1, pid=2792
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:24 +0000] "GET /object/grid_data?dag_id=tutorial&num_runs=25 HTTP/1.1" 200 3186 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:48:26.316+0000] {dagrun.py:854} INFO - Marking run <DagRun tutorial @ 2024-10-31 18:48:16.678180+00:00: manual__2024-10-31T18:48:16.678180+00:00, state:running, queued_at: 2024-10-31 18:48:16.727879+00:00. externally triggered: True> successful
airflow-scheduler-1  | Dag run in success state
airflow-scheduler-1  | Dag run start:2024-10-31 18:48:17.027319+00:00 end:2024-10-31 18:48:26.317143+00:00
airflow-scheduler-1  | [2024-10-31T18:48:26.317+0000] {dagrun.py:905} INFO - DagRun Finished: dag_id=tutorial, execution_date=2024-10-31 18:48:16.678180+00:00, run_id=manual__2024-10-31T18:48:16.678180+00:00, run_start_date=2024-10-31 18:48:17.027319+00:00, run_end_date=2024-10-31 18:48:26.317143+00:00, run_duration=9.289824, state=success, external_trigger=True, run_type=manual, data_interval_start=2024-10-30 18:48:16.678180+00:00, data_interval_end=2024-10-31 18:48:16.678180+00:00, dag_hash=633bede901b5b4d8acfa89a66a6d158f
airflow-scheduler-1  | [2024-10-31T18:48:26.336+0000] {scheduler_job_runner.py:764} INFO - Received executor event with state success for task instance TaskInstanceKey(dag_id='tutorial', task_id='sleep', run_id='manual__2024-10-31T18:48:16.678180+00:00', try_number=1, map_index=-1)
airflow-scheduler-1  | [2024-10-31T18:48:26.342+0000] {scheduler_job_runner.py:801} INFO - TaskInstance Finished: dag_id=tutorial, task_id=sleep, run_id=manual__2024-10-31T18:48:16.678180+00:00, map_index=-1, run_start_date=2024-10-31 18:48:20.037865+00:00, run_end_date=2024-10-31 18:48:25.335812+00:00, run_duration=5.297947, state=success, executor=LocalExecutor(parallelism=32), executor_state=success, try_number=1, max_tries=3, job_id=6, pool=default_pool, queue=default, priority_weight=1, operator=BashOperator, queued_dttm=2024-10-31 18:48:19.294973+00:00, queued_by_job_id=1, pid=2791
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:27 +0000] "GET /object/grid_data?dag_id=tutorial&num_runs=25 HTTP/1.1" 200 3246 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:48:37 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:40 +0000] "GET /api/v1/eventLogs?offset=0&limit=25&dag_id=tutorial&run_id=manual__2024-10-31T18:48:16.678180%2B00:00&order_by=-when HTTP/1.1" 200 2351 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=event_log" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:48 +0000] "GET /object/graph_data?dag_id=tutorial HTTP/1.1" 200 248 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=graph" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:48 +0000] "GET /api/v1/datasets/events?source_dag_id=tutorial&source_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00 HTTP/1.1" 200 49 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=graph" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:48 +0000] "GET /api/v1/dags/tutorial HTTP/1.1" 200 1249 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=graph" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:48 +0000] "GET /api/v1/datasets?dag_ids=tutorial HTTP/1.1" 200 44 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=graph" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:48:49 +0000] "GET /api/v1/dags/tutorial/details HTTP/1.1" 200 1683 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=graph" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:48:59.961+0000] {scheduler_job_runner.py:1847} INFO - Adopting or resetting orphaned tasks for active dag runs
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:01 +0000] "GET /api/v1/dagSources/.eJw9yjEOgCAMAMC_sEujPshUrNJYbAM1yu_dvPkCZC0EyHUXfSCKJhQQXsG6Z73mOE7Q2GkwTCce1P5LLxYTWjY8GvjtWhklWg8fBGAe6Q.1XHFFIF7o1d6Hxk8tbpPQs-cvzw HTTP/1.1" 200 4047 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=code&task_id=print_date" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:49:07 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:22 +0000] "GET /api/v1/dags/tutorial/dagRuns/manual__2024-10-31T18:48:16.678180+00:00/taskInstances/print_date/dependencies HTTP/1.1" 200 25 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=details&task_id=print_date" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:22 +0000] "GET /api/v1/dags/tutorial/tasks/print_date HTTP/1.1" 200 1297 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=details&task_id=print_date" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:22 +0000] "GET /api/v1/dags/tutorial/dagRuns/manual__2024-10-31T18:48:16.678180+00:00/taskInstances/print_date HTTP/1.1" 200 901 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=details&task_id=print_date" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:49:37 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:38 +0000] "POST /paused?is_paused=false&dag_id=tutorial HTTP/1.1" 200 2 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=details&task_id=print_date" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:40 +0000] "GET /home HTTP/1.1" 200 581307 "http://localhost:8080/dags/tutorial/grid?dag_run_id=manual__2024-10-31T18%3A48%3A16.678180%2B00%3A00&tab=details&task_id=print_date" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:41 +0000] "GET /cluster_activity HTTP/1.1" 200 24085 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:42 +0000] "GET /static/dist/clusterActivity.2eb1361f2a012f3a4ff9.js HTTP/1.1" 200 0 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:43 +0000] "GET /health HTTP/1.1" 200 283 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:43 +0000] "GET /api/v1/dags?paused=false HTTP/1.1" 200 39 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:43 +0000] "GET /api/v1/dags/~/dagRuns?state=running&limit=5&order_by=start_date HTTP/1.1" 200 43 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:43 +0000] "GET /api/v1/pools HTTP/1.1" 200 332 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:43 +0000] "GET /object/historical_metrics_data?start_date=2024-10-30T19:49:42.000Z&end_date=2024-10-31T19:49:42.000Z HTTP/1.1" 200 367 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:43 +0000] "GET /api/v1/dags HTTP/1.1" 200 100180 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:46 +0000] "GET /health HTTP/1.1" 200 283 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:47 +0000] "GET /api/v1/dags?paused=false HTTP/1.1" 200 39 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:47 +0000] "GET /datasets HTTP/1.1" 200 24349 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:47 +0000] "GET /api/v1/dags/~/dagRuns?state=running&limit=5&order_by=start_date HTTP/1.1" 200 43 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:47 +0000] "GET /object/historical_metrics_data?start_date=2024-10-30T19:49:42.000Z&end_date=2024-10-31T19:49:42.000Z HTTP/1.1" 200 367 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:47 +0000] "GET /api/v1/pools HTTP/1.1" 200 332 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:47 +0000] "GET /static/dist/datasets.3be4bd53047231858160.js HTTP/1.1" 200 0 "http://localhost:8080/datasets" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:48 +0000] "GET /object/dataset_dependencies HTTP/1.1" 200 8676 "http://localhost:8080/datasets" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:48 +0000] "GET /api/v1/datasets/events?limit=25&order_by=-timestamp HTTP/1.1" 200 49 "http://localhost:8080/datasets" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:54 +0000] "GET /object/datasets_summary?offset=0&limit=25&order_by=-last_dataset_update HTTP/1.1" 200 1289 "http://localhost:8080/datasets?tab=datasets" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:57 +0000] "GET /api/v1/datasets/s3%3A%2F%2Fbucket%2Fmy-task HTTP/1.1" 200 619 "http://localhost:8080/datasets?uri=s3%3A%2F%2Fbucket%2Fmy-task" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:49:57 +0000] "GET /api/v1/datasets/events?limit=25&order_by=-timestamp&dataset_id=12 HTTP/1.1" 200 49 "http://localhost:8080/datasets?uri=s3%3A%2F%2Fbucket%2Fmy-task" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:03 +0000] "GET /dags/dataset_s3_bucket_producer/grid?&task_id=produce_dataset_events HTTP/1.1" 200 9359 "http://localhost:8080/datasets?uri=s3%3A%2F%2Fbucket%2Fmy-task" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:04 +0000] "GET /object/grid_data?dag_id=dataset_s3_bucket_producer&num_runs=25 HTTP/1.1" 200 309 "http://localhost:8080/dags/dataset_s3_bucket_producer/grid?&task_id=produce_dataset_events" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:04 +0000] "GET /object/next_run_datasets/dataset_s3_bucket_producer HTTP/1.1" 200 39 "http://localhost:8080/dags/dataset_s3_bucket_producer/grid?&task_id=produce_dataset_events" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:50:07 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:08 +0000] "GET /datasets?uri=s3%3A%2F%2Fbucket%2Fmy-task HTTP/1.1" 200 24349 "http://localhost:8080/cluster_activity" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:09 +0000] "GET /object/dataset_dependencies HTTP/1.1" 200 8676 "http://localhost:8080/datasets?uri=s3%3A%2F%2Fbucket%2Fmy-task" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:09 +0000] "GET /api/v1/datasets/s3%3A%2F%2Fbucket%2Fmy-task HTTP/1.1" 200 619 "http://localhost:8080/datasets?uri=s3%3A%2F%2Fbucket%2Fmy-task" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:09 +0000] "GET /api/v1/datasets/events?limit=25&order_by=-timestamp&dataset_id=12 HTTP/1.1" 200 49 "http://localhost:8080/datasets?uri=s3%3A%2F%2Fbucket%2Fmy-task" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:19 +0000] "GET /home HTTP/1.1" 200 581307 "http://localhost:8080/datasets?uri=s3%3A%2F%2Fbucket%2Fmy-task" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:22 +0000] "POST /last_dagruns HTTP/1.1" 200 324 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:22 +0000] "POST /blocked HTTP/1.1" 200 2 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:22 +0000] "POST /dag_stats HTTP/1.1" 200 12280 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:22 +0000] "POST /task_stats HTTP/1.1" 200 38925 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:50:37 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:38 +0000] "GET /dags/read_dataset_event/grid HTTP/1.1" 200 9377 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:39 +0000] "GET /object/grid_data?dag_id=read_dataset_event&num_runs=25 HTTP/1.1" 200 322 "http://localhost:8080/dags/read_dataset_event/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:39 +0000] "GET /api/v1/dags/read_dataset_event HTTP/1.1" 200 1259 "http://localhost:8080/dags/read_dataset_event/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:39 +0000] "GET /object/next_run_datasets/read_dataset_event HTTP/1.1" 200 39 "http://localhost:8080/dags/read_dataset_event/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:39 +0000] "GET /api/v1/dags/read_dataset_event/details HTTP/1.1" 200 1644 "http://localhost:8080/dags/read_dataset_event/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:43 +0000] "POST /dags/read_dataset_event/trigger?origin=%2Fdags%2Fread_dataset_event%2Fgrid HTTP/1.1" 302 407 "http://localhost:8080/dags/read_dataset_event/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:43 +0000] "GET /dags/read_dataset_event/grid?dag_run_id=manual__2024-10-31T18%3A50%3A43.063242%2B00%3A00 HTTP/1.1" 200 9516 "http://localhost:8080/dags/read_dataset_event/grid" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:50:43.671+0000] {dag.py:4180} INFO - Setting next_dagrun for read_dataset_event to 2024-10-31 00:00:00+00:00, run_after=2024-11-01 00:00:00+00:00
airflow-scheduler-1  | Dag run  in running state
airflow-scheduler-1  | Dag information Queued at: 2024-10-31 18:50:43.659547+00:00 hash info: 865118993ec73453e171804d4dd252c0
airflow-scheduler-1  | Dag run  in running state
airflow-scheduler-1  | Dag information Queued at: 2024-10-31 18:50:43.093443+00:00 hash info: 865118993ec73453e171804d4dd252c0
airflow-scheduler-1  | [2024-10-31T18:50:43.731+0000] {scheduler_job_runner.py:423} INFO - 2 tasks up for execution:
airflow-scheduler-1  | 	<TaskInstance: read_dataset_event.read_dataset_event scheduled__2024-10-30T00:00:00+00:00 [scheduled]>
airflow-scheduler-1  | 	<TaskInstance: read_dataset_event.read_dataset_event manual__2024-10-31T18:50:43.063242+00:00 [scheduled]>
airflow-scheduler-1  | [2024-10-31T18:50:43.732+0000] {scheduler_job_runner.py:495} INFO - DAG read_dataset_event has 0/16 running and queued tasks
airflow-scheduler-1  | [2024-10-31T18:50:43.732+0000] {scheduler_job_runner.py:495} INFO - DAG read_dataset_event has 1/16 running and queued tasks
airflow-scheduler-1  | [2024-10-31T18:50:43.733+0000] {scheduler_job_runner.py:634} INFO - Setting the following tasks to queued state:
airflow-scheduler-1  | 	<TaskInstance: read_dataset_event.read_dataset_event scheduled__2024-10-30T00:00:00+00:00 [scheduled]>
airflow-scheduler-1  | 	<TaskInstance: read_dataset_event.read_dataset_event manual__2024-10-31T18:50:43.063242+00:00 [scheduled]>
airflow-scheduler-1  | [2024-10-31T18:50:43.737+0000] {scheduler_job_runner.py:736} INFO - Trying to enqueue tasks: [<TaskInstance: read_dataset_event.read_dataset_event scheduled__2024-10-30T00:00:00+00:00 [scheduled]>, <TaskInstance: read_dataset_event.read_dataset_event manual__2024-10-31T18:50:43.063242+00:00 [scheduled]>] for executor: LocalExecutor(parallelism=32)
airflow-scheduler-1  | [2024-10-31T18:50:43.739+0000] {scheduler_job_runner.py:680} INFO - Sending TaskInstanceKey(dag_id='read_dataset_event', task_id='read_dataset_event', run_id='scheduled__2024-10-30T00:00:00+00:00', try_number=1, map_index=-1) to LocalExecutor with priority 1 and queue default
airflow-scheduler-1  | [2024-10-31T18:50:43.739+0000] {base_executor.py:168} INFO - Adding to queue: ['airflow', 'tasks', 'run', 'read_dataset_event', 'read_dataset_event', 'scheduled__2024-10-30T00:00:00+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/example_inlet_event_extra.py']
airflow-scheduler-1  | [2024-10-31T18:50:43.740+0000] {scheduler_job_runner.py:680} INFO - Sending TaskInstanceKey(dag_id='read_dataset_event', task_id='read_dataset_event', run_id='manual__2024-10-31T18:50:43.063242+00:00', try_number=1, map_index=-1) to LocalExecutor with priority 1 and queue default
airflow-scheduler-1  | [2024-10-31T18:50:43.741+0000] {base_executor.py:168} INFO - Adding to queue: ['airflow', 'tasks', 'run', 'read_dataset_event', 'read_dataset_event', 'manual__2024-10-31T18:50:43.063242+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/example_inlet_event_extra.py']
airflow-scheduler-1  | [2024-10-31T18:50:43.746+0000] {local_executor.py:93} INFO - QueuedLocalWorker running ['airflow', 'tasks', 'run', 'read_dataset_event', 'read_dataset_event', 'manual__2024-10-31T18:50:43.063242+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/example_inlet_event_extra.py']
airflow-scheduler-1  | [2024-10-31T18:50:43.747+0000] {local_executor.py:93} INFO - QueuedLocalWorker running ['airflow', 'tasks', 'run', 'read_dataset_event', 'read_dataset_event', 'scheduled__2024-10-30T00:00:00+00:00', '--local', '--subdir', '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/example_inlet_event_extra.py']
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:43 +0000] "GET /object/grid_data?dag_id=read_dataset_event&num_runs=25 HTTP/1.1" 200 1701 "http://localhost:8080/dags/read_dataset_event/grid?dag_run_id=manual__2024-10-31T18%3A50%3A43.063242%2B00%3A00" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:50:43.805+0000] {dagbag.py:588} INFO - Filling up the DagBag from /home/***/.local/lib/python3.12/site-packages/***/example_dags/example_inlet_event_extra.py
airflow-scheduler-1  | [2024-10-31T18:50:43.805+0000] {dagbag.py:588} INFO - Filling up the DagBag from /home/***/.local/lib/python3.12/site-packages/***/example_dags/example_inlet_event_extra.py
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:44 +0000] "GET /object/next_run_datasets/read_dataset_event HTTP/1.1" 200 39 "http://localhost:8080/dags/read_dataset_event/grid?dag_run_id=manual__2024-10-31T18%3A50%3A43.063242%2B00%3A00" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:50:44.647+0000] {task_command.py:467} INFO - Running <TaskInstance: read_dataset_event.read_dataset_event scheduled__2024-10-30T00:00:00+00:00 [queued]> on host fa2e009679e0
airflow-scheduler-1  | [2024-10-31T18:50:44.647+0000] {task_command.py:467} INFO - Running <TaskInstance: read_dataset_event.read_dataset_event manual__2024-10-31T18:50:43.063242+00:00 [queued]> on host fa2e009679e0
airflow-scheduler-1  | [2024-10-31T18:50:45.947+0000] {scheduler_job_runner.py:764} INFO - Received executor event with state success for task instance TaskInstanceKey(dag_id='read_dataset_event', task_id='read_dataset_event', run_id='manual__2024-10-31T18:50:43.063242+00:00', try_number=1, map_index=-1)
airflow-scheduler-1  | [2024-10-31T18:50:45.948+0000] {scheduler_job_runner.py:764} INFO - Received executor event with state success for task instance TaskInstanceKey(dag_id='read_dataset_event', task_id='read_dataset_event', run_id='scheduled__2024-10-30T00:00:00+00:00', try_number=1, map_index=-1)
airflow-scheduler-1  | [2024-10-31T18:50:45.958+0000] {scheduler_job_runner.py:801} INFO - TaskInstance Finished: dag_id=read_dataset_event, task_id=read_dataset_event, run_id=manual__2024-10-31T18:50:43.063242+00:00, map_index=-1, run_start_date=2024-10-31 18:50:44.771827+00:00, run_end_date=None, run_duration=None, state=running, executor=LocalExecutor(parallelism=32), executor_state=success, try_number=1, max_tries=0, job_id=8, pool=default_pool, queue=default, priority_weight=1, operator=_PythonDecoratedOperator, queued_dttm=2024-10-31 18:50:43.734610+00:00, queued_by_job_id=1, pid=4039
airflow-scheduler-1  | [2024-10-31T18:50:45.958+0000] {scheduler_job_runner.py:801} INFO - TaskInstance Finished: dag_id=read_dataset_event, task_id=read_dataset_event, run_id=scheduled__2024-10-30T00:00:00+00:00, map_index=-1, run_start_date=2024-10-31 18:50:44.771852+00:00, run_end_date=None, run_duration=None, state=running, executor=LocalExecutor(parallelism=32), executor_state=success, try_number=1, max_tries=0, job_id=9, pool=default_pool, queue=default, priority_weight=1, operator=_PythonDecoratedOperator, queued_dttm=2024-10-31 18:50:43.734610+00:00, queued_by_job_id=1, pid=4040
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:46 +0000] "GET /object/grid_data?dag_id=read_dataset_event&num_runs=25 HTTP/1.1" 200 1763 "http://localhost:8080/dags/read_dataset_event/grid?dag_run_id=manual__2024-10-31T18%3A50%3A43.063242%2B00%3A00" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:50 +0000] "GET /object/grid_data?dag_id=read_dataset_event&num_runs=25 HTTP/1.1" 200 1763 "http://localhost:8080/dags/read_dataset_event/grid?dag_run_id=manual__2024-10-31T18%3A50%3A43.063242%2B00%3A00" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:50:51.672+0000] {scheduler_job_runner.py:1978} WARNING - Failing (2) jobs without heartbeat after 2024-10-31 18:45:51.667864+00:00
airflow-scheduler-1  | [2024-10-31T18:50:51.674+0000] {scheduler_job_runner.py:2001} ERROR - Detected zombie job: {'full_filepath': '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/example_inlet_event_extra.py', 'processor_subdir': '/opt/airflow/dags', 'msg': "{'DAG Id': 'read_dataset_event', 'Task Id': 'read_dataset_event', 'Run Id': 'manual__2024-10-31T18:50:43.063242+00:00', 'Hostname': 'fa2e009679e0'}", 'simple_task_instance': <airflow.models.taskinstance.SimpleTaskInstance object at 0x7f5cca437d70>, 'task_callback_type': None} (See https://airflow.apache.org/docs/apache-airflow/stable/core-concepts/tasks.html#zombie-undead-tasks)
airflow-scheduler-1  | [2024-10-31T18:50:51.675+0000] {scheduler_job_runner.py:2001} ERROR - Detected zombie job: {'full_filepath': '/home/airflow/.local/lib/python3.12/site-packages/airflow/example_dags/example_inlet_event_extra.py', 'processor_subdir': '/opt/airflow/dags', 'msg': "{'DAG Id': 'read_dataset_event', 'Task Id': 'read_dataset_event', 'Run Id': 'scheduled__2024-10-30T00:00:00+00:00', 'Hostname': 'fa2e009679e0'}", 'simple_task_instance': <airflow.models.taskinstance.SimpleTaskInstance object at 0x7f5cca434980>, 'task_callback_type': None} (See https://airflow.apache.org/docs/apache-airflow/stable/core-concepts/tasks.html#zombie-undead-tasks)
airflow-scheduler-1  | [2024-10-31T18:50:52.699+0000] {dagrun.py:823} ERROR - Marking run <DagRun read_dataset_event @ 2024-10-30 00:00:00+00:00: scheduled__2024-10-30T00:00:00+00:00, state:running, queued_at: 2024-10-31 18:50:43.659547+00:00. externally triggered: False> failed
airflow-scheduler-1  | Dag run  in failure state
airflow-scheduler-1  | Dag information:read_dataset_event Run id: scheduled__2024-10-30T00:00:00+00:00 external trigger: False
airflow-scheduler-1  | Failed with message: task_failure
airflow-scheduler-1  | [2024-10-31T18:50:52.699+0000] {dagrun.py:905} INFO - DagRun Finished: dag_id=read_dataset_event, execution_date=2024-10-30 00:00:00+00:00, run_id=scheduled__2024-10-30T00:00:00+00:00, run_start_date=2024-10-31 18:50:43.685014+00:00, run_end_date=2024-10-31 18:50:52.699746+00:00, run_duration=9.014732, state=failed, external_trigger=False, run_type=scheduled, data_interval_start=2024-10-30 00:00:00+00:00, data_interval_end=2024-10-31 00:00:00+00:00, dag_hash=865118993ec73453e171804d4dd252c0
airflow-scheduler-1  | [2024-10-31T18:50:52.705+0000] {dag.py:4180} INFO - Setting next_dagrun for read_dataset_event to 2024-10-31 00:00:00+00:00, run_after=2024-11-01 00:00:00+00:00
airflow-scheduler-1  | [2024-10-31T18:50:52.709+0000] {dagrun.py:823} ERROR - Marking run <DagRun read_dataset_event @ 2024-10-31 18:50:43.063242+00:00: manual__2024-10-31T18:50:43.063242+00:00, state:running, queued_at: 2024-10-31 18:50:43.093443+00:00. externally triggered: True> failed
airflow-scheduler-1  | Dag run  in failure state
airflow-scheduler-1  | Dag information:read_dataset_event Run id: manual__2024-10-31T18:50:43.063242+00:00 external trigger: True
airflow-scheduler-1  | Failed with message: task_failure
airflow-scheduler-1  | [2024-10-31T18:50:52.709+0000] {dagrun.py:905} INFO - DagRun Finished: dag_id=read_dataset_event, execution_date=2024-10-31 18:50:43.063242+00:00, run_id=manual__2024-10-31T18:50:43.063242+00:00, run_start_date=2024-10-31 18:50:43.685494+00:00, run_end_date=2024-10-31 18:50:52.709776+00:00, run_duration=9.024282, state=failed, external_trigger=True, run_type=manual, data_interval_start=2024-10-30 00:00:00+00:00, data_interval_end=2024-10-31 00:00:00+00:00, dag_hash=865118993ec73453e171804d4dd252c0
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:50:53 +0000] "GET /object/grid_data?dag_id=read_dataset_event&num_runs=25 HTTP/1.1" 200 1879 "http://localhost:8080/dags/read_dataset_event/grid?dag_run_id=manual__2024-10-31T18%3A50%3A43.063242%2B00%3A00" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:51:07 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:51:37 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:52:07 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:52:37 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:53:07 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:53:37 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:53:52 +0000] "GET /home HTTP/1.1" 200 581315 "http://localhost:8080/dags/read_dataset_event/grid?dag_run_id=manual__2024-10-31T18%3A50%3A43.063242%2B00%3A00" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:53:56 +0000] "POST /last_dagruns HTTP/1.1" 200 653 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:53:56 +0000] "POST /dag_stats HTTP/1.1" 200 12280 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:53:56 +0000] "POST /blocked HTTP/1.1" 200 2 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:53:56 +0000] "POST /task_stats HTTP/1.1" 200 38925 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-scheduler-1  | [2024-10-31T18:53:59.986+0000] {scheduler_job_runner.py:1847} INFO - Adopting or resetting orphaned tasks for active dag runs
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:54:01 +0000] "POST /last_dagruns HTTP/1.1" 200 329 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:54:01 +0000] "POST /task_stats HTTP/1.1" 200 523 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:54:01 +0000] "POST /next_run_datasets_summary HTTP/1.1" 200 2 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 172.20.0.1 - - [31/Oct/2024:18:54:02 +0000] "POST /dag_stats HTTP/1.1" 200 158 "http://localhost:8080/home" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:54:08 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:54:38 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:55:08 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:55:38 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:56:08 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
airflow-webserver-1  | 127.0.0.1 - - [31/Oct/2024:18:56:38 +0000] "GET /health HTTP/1.1" 200 283 "-" "curl/7.88.1"
