time="2024-10-31T19:15:58+01:00" level=warning msg="The \"AIRFLOW_UID\" variable is not set. Defaulting to a blank string."
time="2024-10-31T19:15:58+01:00" level=warning msg="The \"AIRFLOW_UID\" variable is not set. Defaulting to a blank string."
 Container 01-airflow-initial-postgres-1  Running
 Container 01-airflow-initial-airflow-init-1  Created
 Container 01-airflow-initial-airflow-scheduler-1  Creating
 Container 01-airflow-initial-airflow-webserver-1  Creating
 Container 01-airflow-initial-airflow-scheduler-1  Created
 Container 01-airflow-initial-airflow-webserver-1  Created
Attaching to airflow-init-1, airflow-scheduler-1, airflow-webserver-1, postgres-1
airflow-init-1       | 
airflow-init-1       | [1;33mWARNING!!!: AIRFLOW_UID not set![0m
airflow-init-1       | If you are on Linux, you SHOULD follow the instructions below to set 
airflow-init-1       | AIRFLOW_UID environment variable, otherwise files will be owned by root.
airflow-init-1       | For other operating systems you can get rid of the warning with manually created .env file:
airflow-init-1       |     See: https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html#setting-the-right-airflow-user
airflow-init-1       | 
airflow-init-1       | The container is run as root user. For security, consider using a regular user account.
airflow-init-1       | 
airflow-init-1       | DB: postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1       | Performing upgrade to the metadata database postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1       | [2024-10-31T18:16:07.053+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1       | [2024-10-31T18:16:07.054+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1       | [2024-10-31T18:16:07.060+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1       | [2024-10-31T18:16:07.060+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1       | [2024-10-31T18:16:07.062+0000] {db.py:1674} INFO - Creating tables
airflow-init-1       | INFO  [alembic.runtime.migration] Context impl PostgresqlImpl.
airflow-init-1       | INFO  [alembic.runtime.migration] Will assume transactional DDL.
airflow-init-1       | INFO  [alembic.runtime.migration] Context impl PostgresqlImpl.
airflow-init-1       | INFO  [alembic.runtime.migration] Will assume transactional DDL.
airflow-init-1       | Database migrating done!
airflow-init-1       | /home/airflow/.local/lib/python3.12/site-packages/flask_limiter/extension.py:333 UserWarning: Using the in-memory storage for tracking rate limits as no storage was explicitly specified. This is not recommended for production use. See: https://flask-limiter.readthedocs.io#configuring-a-storage-backend for documentation about configuring the storage backend.
airflow-init-1       | airflow already exist in the db
airflow-init-1       | 2.10.2
[Kairflow-init-1 exited with code 0
airflow-webserver-1  | ....................
airflow-webserver-1  | ERROR! Maximum number of retries (20) reached.
airflow-webserver-1  | 
airflow-webserver-1  | Last check result:
airflow-webserver-1  | $ airflow db check
airflow-webserver-1  | Unable to load the config, contains a configuration error.
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-webserver-1  | 
airflow-webserver-1  | During handling of the above exception, another exception occurred:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-webserver-1  |     handler = self.configure_handler(handlers[name])
airflow-webserver-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-webserver-1  |     result = factory(**kwargs)
airflow-webserver-1  |              ^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-webserver-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-webserver-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-webserver-1  | 
airflow-webserver-1  | The above exception was the direct cause of the following exception:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-webserver-1  |     from airflow.__main__ import main
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-webserver-1  |     settings.initialize()
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-webserver-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-webserver-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-webserver-1  |     raise e
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-webserver-1  |     dictConfig(logging_config)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-webserver-1  |     dictConfigClass(config).configure()
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-webserver-1  |     raise ValueError('Unable to configure handler '
airflow-webserver-1  | ValueError: Unable to configure handler 'processor'
airflow-webserver-1  | 
airflow-scheduler-1  | ....................
airflow-scheduler-1  | ERROR! Maximum number of retries (20) reached.
airflow-scheduler-1  | 
airflow-scheduler-1  | Last check result:
airflow-scheduler-1  | $ airflow db check
airflow-scheduler-1  | Unable to load the config, contains a configuration error.
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-scheduler-1  | 
airflow-scheduler-1  | During handling of the above exception, another exception occurred:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-scheduler-1  |     handler = self.configure_handler(handlers[name])
airflow-scheduler-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-scheduler-1  |     result = factory(**kwargs)
airflow-scheduler-1  |              ^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-scheduler-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-scheduler-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-scheduler-1  | 
airflow-scheduler-1  | The above exception was the direct cause of the following exception:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-scheduler-1  |     from airflow.__main__ import main
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-scheduler-1  |     settings.initialize()
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-scheduler-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-scheduler-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-scheduler-1  |     raise e
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-scheduler-1  |     dictConfig(logging_config)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-scheduler-1  |     dictConfigClass(config).configure()
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-scheduler-1  |     raise ValueError('Unable to configure handler '
airflow-scheduler-1  | ValueError: Unable to configure handler 'processor'
airflow-scheduler-1  | 
[Kairflow-webserver-1 exited with code 0
[Kairflow-scheduler-1 exited with code 0
airflow-webserver-1  | ....................
airflow-webserver-1  | ERROR! Maximum number of retries (20) reached.
airflow-webserver-1  | 
airflow-webserver-1  | Last check result:
airflow-webserver-1  | $ airflow db check
airflow-webserver-1  | Unable to load the config, contains a configuration error.
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-webserver-1  | 
airflow-webserver-1  | During handling of the above exception, another exception occurred:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-webserver-1  |     handler = self.configure_handler(handlers[name])
airflow-webserver-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-webserver-1  |     result = factory(**kwargs)
airflow-webserver-1  |              ^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-webserver-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-webserver-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-webserver-1  | 
airflow-webserver-1  | The above exception was the direct cause of the following exception:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-webserver-1  |     from airflow.__main__ import main
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-webserver-1  |     settings.initialize()
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-webserver-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-webserver-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-webserver-1  |     raise e
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-webserver-1  |     dictConfig(logging_config)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-webserver-1  |     dictConfigClass(config).configure()
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-webserver-1  |     raise ValueError('Unable to configure handler '
airflow-webserver-1  | ValueError: Unable to configure handler 'processor'
airflow-webserver-1  | 
airflow-scheduler-1  | ....................
airflow-scheduler-1  | ERROR! Maximum number of retries (20) reached.
airflow-scheduler-1  | 
airflow-scheduler-1  | Last check result:
airflow-scheduler-1  | $ airflow db check
airflow-scheduler-1  | Unable to load the config, contains a configuration error.
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-scheduler-1  | 
airflow-scheduler-1  | During handling of the above exception, another exception occurred:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-scheduler-1  |     handler = self.configure_handler(handlers[name])
airflow-scheduler-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-scheduler-1  |     result = factory(**kwargs)
airflow-scheduler-1  |              ^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-scheduler-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-scheduler-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-scheduler-1  | 
airflow-scheduler-1  | The above exception was the direct cause of the following exception:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-scheduler-1  |     from airflow.__main__ import main
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-scheduler-1  |     settings.initialize()
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-scheduler-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-scheduler-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-scheduler-1  |     raise e
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-scheduler-1  |     dictConfig(logging_config)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-scheduler-1  |     dictConfigClass(config).configure()
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-scheduler-1  |     raise ValueError('Unable to configure handler '
airflow-scheduler-1  | ValueError: Unable to configure handler 'processor'
airflow-scheduler-1  | 
[Kairflow-webserver-1 exited with code 0
[Kairflow-scheduler-1 exited with code 0
airflow-scheduler-1  | ....................
airflow-scheduler-1  | ERROR! Maximum number of retries (20) reached.
airflow-scheduler-1  | 
airflow-scheduler-1  | Last check result:
airflow-scheduler-1  | $ airflow db check
airflow-scheduler-1  | Unable to load the config, contains a configuration error.
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-scheduler-1  | 
airflow-scheduler-1  | During handling of the above exception, another exception occurred:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-scheduler-1  |     handler = self.configure_handler(handlers[name])
airflow-scheduler-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-scheduler-1  |     result = factory(**kwargs)
airflow-scheduler-1  |              ^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-scheduler-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-scheduler-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-scheduler-1  | 
airflow-scheduler-1  | The above exception was the direct cause of the following exception:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-scheduler-1  |     from airflow.__main__ import main
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-scheduler-1  |     settings.initialize()
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-scheduler-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-scheduler-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-scheduler-1  |     raise e
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-scheduler-1  |     dictConfig(logging_config)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-scheduler-1  |     dictConfigClass(config).configure()
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-scheduler-1  |     raise ValueError('Unable to configure handler '
airflow-scheduler-1  | ValueError: Unable to configure handler 'processor'
airflow-scheduler-1  | 
airflow-webserver-1  | ....................
airflow-webserver-1  | ERROR! Maximum number of retries (20) reached.
airflow-webserver-1  | 
airflow-webserver-1  | Last check result:
airflow-webserver-1  | $ airflow db check
airflow-webserver-1  | Unable to load the config, contains a configuration error.
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-webserver-1  | 
airflow-webserver-1  | During handling of the above exception, another exception occurred:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-webserver-1  |     handler = self.configure_handler(handlers[name])
airflow-webserver-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-webserver-1  |     result = factory(**kwargs)
airflow-webserver-1  |              ^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-webserver-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-webserver-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-webserver-1  | 
airflow-webserver-1  | The above exception was the direct cause of the following exception:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-webserver-1  |     from airflow.__main__ import main
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-webserver-1  |     settings.initialize()
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-webserver-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-webserver-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-webserver-1  |     raise e
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-webserver-1  |     dictConfig(logging_config)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-webserver-1  |     dictConfigClass(config).configure()
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-webserver-1  |     raise ValueError('Unable to configure handler '
airflow-webserver-1  | ValueError: Unable to configure handler 'processor'
airflow-webserver-1  | 
[Kairflow-scheduler-1 exited with code 0
[Kairflow-webserver-1 exited with code 0
airflow-webserver-1  | ....................
airflow-webserver-1  | ERROR! Maximum number of retries (20) reached.
airflow-webserver-1  | 
airflow-webserver-1  | Last check result:
airflow-webserver-1  | $ airflow db check
airflow-webserver-1  | Unable to load the config, contains a configuration error.
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-webserver-1  | 
airflow-webserver-1  | During handling of the above exception, another exception occurred:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-webserver-1  |     handler = self.configure_handler(handlers[name])
airflow-webserver-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-webserver-1  |     result = factory(**kwargs)
airflow-webserver-1  |              ^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-webserver-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-webserver-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-webserver-1  | 
airflow-webserver-1  | The above exception was the direct cause of the following exception:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-webserver-1  |     from airflow.__main__ import main
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-webserver-1  |     settings.initialize()
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-webserver-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-webserver-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-webserver-1  |     raise e
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-webserver-1  |     dictConfig(logging_config)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-webserver-1  |     dictConfigClass(config).configure()
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-webserver-1  |     raise ValueError('Unable to configure handler '
airflow-webserver-1  | ValueError: Unable to configure handler 'processor'
airflow-webserver-1  | 
airflow-scheduler-1  | ....................
airflow-scheduler-1  | ERROR! Maximum number of retries (20) reached.
airflow-scheduler-1  | 
airflow-scheduler-1  | Last check result:
airflow-scheduler-1  | $ airflow db check
airflow-scheduler-1  | Unable to load the config, contains a configuration error.
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-scheduler-1  | 
airflow-scheduler-1  | During handling of the above exception, another exception occurred:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-scheduler-1  |     handler = self.configure_handler(handlers[name])
airflow-scheduler-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-scheduler-1  |     result = factory(**kwargs)
airflow-scheduler-1  |              ^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-scheduler-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-scheduler-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-scheduler-1  | 
airflow-scheduler-1  | The above exception was the direct cause of the following exception:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-scheduler-1  |     from airflow.__main__ import main
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-scheduler-1  |     settings.initialize()
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-scheduler-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-scheduler-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-scheduler-1  |     raise e
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-scheduler-1  |     dictConfig(logging_config)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-scheduler-1  |     dictConfigClass(config).configure()
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-scheduler-1  |     raise ValueError('Unable to configure handler '
airflow-scheduler-1  | ValueError: Unable to configure handler 'processor'
airflow-scheduler-1  | 
[Kairflow-webserver-1 exited with code 0
[Kairflow-scheduler-1 exited with code 0
airflow-scheduler-1  | ....................
airflow-scheduler-1  | ERROR! Maximum number of retries (20) reached.
airflow-scheduler-1  | 
airflow-scheduler-1  | Last check result:
airflow-scheduler-1  | $ airflow db check
airflow-scheduler-1  | Unable to load the config, contains a configuration error.
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-scheduler-1  | 
airflow-scheduler-1  | During handling of the above exception, another exception occurred:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-scheduler-1  |     handler = self.configure_handler(handlers[name])
airflow-scheduler-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-scheduler-1  |     result = factory(**kwargs)
airflow-scheduler-1  |              ^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-scheduler-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-scheduler-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-scheduler-1  | 
airflow-scheduler-1  | The above exception was the direct cause of the following exception:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-scheduler-1  |     from airflow.__main__ import main
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-scheduler-1  |     settings.initialize()
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-scheduler-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-scheduler-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-scheduler-1  |     raise e
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-scheduler-1  |     dictConfig(logging_config)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-scheduler-1  |     dictConfigClass(config).configure()
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-scheduler-1  |     raise ValueError('Unable to configure handler '
airflow-scheduler-1  | ValueError: Unable to configure handler 'processor'
airflow-scheduler-1  | 
airflow-webserver-1  | ....................
airflow-webserver-1  | ERROR! Maximum number of retries (20) reached.
airflow-webserver-1  | 
airflow-webserver-1  | Last check result:
airflow-webserver-1  | $ airflow db check
airflow-webserver-1  | Unable to load the config, contains a configuration error.
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-webserver-1  | 
airflow-webserver-1  | During handling of the above exception, another exception occurred:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-webserver-1  |     handler = self.configure_handler(handlers[name])
airflow-webserver-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-webserver-1  |     result = factory(**kwargs)
airflow-webserver-1  |              ^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-webserver-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-webserver-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-webserver-1  | 
airflow-webserver-1  | The above exception was the direct cause of the following exception:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-webserver-1  |     from airflow.__main__ import main
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-webserver-1  |     settings.initialize()
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-webserver-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-webserver-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-webserver-1  |     raise e
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-webserver-1  |     dictConfig(logging_config)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-webserver-1  |     dictConfigClass(config).configure()
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-webserver-1  |     raise ValueError('Unable to configure handler '
airflow-webserver-1  | ValueError: Unable to configure handler 'processor'
airflow-webserver-1  | 
[Kairflow-scheduler-1 exited with code 0
[Kairflow-webserver-1 exited with code 0
airflow-scheduler-1  | ....................
airflow-scheduler-1  | ERROR! Maximum number of retries (20) reached.
airflow-scheduler-1  | 
airflow-scheduler-1  | Last check result:
airflow-scheduler-1  | $ airflow db check
airflow-scheduler-1  | Unable to load the config, contains a configuration error.
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-scheduler-1  | 
airflow-scheduler-1  | During handling of the above exception, another exception occurred:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-scheduler-1  |     handler = self.configure_handler(handlers[name])
airflow-scheduler-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-scheduler-1  |     result = factory(**kwargs)
airflow-scheduler-1  |              ^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-scheduler-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-scheduler-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-scheduler-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-scheduler-1  | 
airflow-scheduler-1  | The above exception was the direct cause of the following exception:
airflow-scheduler-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-scheduler-1  |     from airflow.__main__ import main
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-scheduler-1  |     settings.initialize()
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-scheduler-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-scheduler-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-scheduler-1  |     raise e
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-scheduler-1  |     dictConfig(logging_config)
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-scheduler-1  |     dictConfigClass(config).configure()
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-scheduler-1  |     raise ValueError('Unable to configure handler '
airflow-scheduler-1  | ValueError: Unable to configure handler 'processor'
airflow-scheduler-1  | 
airflow-webserver-1  | ....................
airflow-webserver-1  | ERROR! Maximum number of retries (20) reached.
airflow-webserver-1  | 
airflow-webserver-1  | Last check result:
airflow-webserver-1  | $ airflow db check
airflow-webserver-1  | Unable to load the config, contains a configuration error.
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-webserver-1  | 
airflow-webserver-1  | During handling of the above exception, another exception occurred:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-webserver-1  |     handler = self.configure_handler(handlers[name])
airflow-webserver-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-webserver-1  |     result = factory(**kwargs)
airflow-webserver-1  |              ^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-webserver-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-webserver-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-webserver-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-webserver-1  | 
airflow-webserver-1  | The above exception was the direct cause of the following exception:
airflow-webserver-1  | 
airflow-webserver-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-webserver-1  |     from airflow.__main__ import main
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-webserver-1  |     settings.initialize()
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-webserver-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-webserver-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-webserver-1  |     raise e
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-webserver-1  |     dictConfig(logging_config)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-webserver-1  |     dictConfigClass(config).configure()
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-webserver-1  |     raise ValueError('Unable to configure handler '
airflow-webserver-1  | ValueError: Unable to configure handler 'processor'
airflow-webserver-1  | 
[Kairflow-scheduler-1 exited with code 0
[Kairflow-webserver-1 exited with code 0
Gracefully stopping... (press Ctrl+C again to force)
 Container 01-airflow-initial-airflow-webserver-1  Stopping
 Container 01-airflow-initial-airflow-scheduler-1  Stopping
 Container 01-airflow-initial-airflow-scheduler-1  Stopped
 Container 01-airflow-initial-airflow-webserver-1  Stopped
 Container 01-airflow-initial-airflow-init-1  Stopping
 Container 01-airflow-initial-airflow-init-1  Stopped
 Container 01-airflow-initial-postgres-1  Stopping
 Container 01-airflow-initial-postgres-1  Stopped
canceled
