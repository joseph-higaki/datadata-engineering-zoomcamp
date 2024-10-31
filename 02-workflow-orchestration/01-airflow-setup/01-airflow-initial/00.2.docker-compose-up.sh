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
airflow-scheduler-1 exited with code 0
airflow-webserver-1 exited with code 0
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
airflow-scheduler-1 exited with code 0
airflow-webserver-1 exited with code 0
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
airflow-webserver-1  | ....................
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-webserver-1  | ERROR! Maximum number of retries (20) reached.
airflow-scheduler-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-webserver-1  | 
airflow-scheduler-1  | 
airflow-webserver-1  | Last check result:
airflow-scheduler-1  | The above exception was the direct cause of the following exception:
airflow-webserver-1  | $ airflow db check
airflow-scheduler-1  | 
airflow-webserver-1  | Unable to load the config, contains a configuration error.
airflow-scheduler-1  | Traceback (most recent call last):
airflow-webserver-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     from airflow.__main__ import main
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-webserver-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-scheduler-1  |     settings.initialize()
airflow-webserver-1  | 
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-webserver-1  | During handling of the above exception, another exception occurred:
airflow-scheduler-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-webserver-1  | 
airflow-scheduler-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-scheduler-1  |     raise e
airflow-webserver-1  |     handler = self.configure_handler(handlers[name])
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-webserver-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |     dictConfig(logging_config)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-webserver-1  |     result = factory(**kwargs)
airflow-scheduler-1  |     dictConfigClass(config).configure()
airflow-webserver-1  |              ^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-scheduler-1  |     raise ValueError('Unable to configure handler '
airflow-webserver-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  | ValueError: Unable to configure handler 'processor'
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-scheduler-1  | 
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
airflow-scheduler-1 exited with code 0
airflow-webserver-1 exited with code 0
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
airflow-webserver-1  | ....................
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-webserver-1  | ERROR! Maximum number of retries (20) reached.
airflow-scheduler-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-webserver-1  | 
airflow-scheduler-1  | 
airflow-webserver-1  | Last check result:
airflow-scheduler-1  | The above exception was the direct cause of the following exception:
airflow-webserver-1  | $ airflow db check
airflow-scheduler-1  | 
airflow-webserver-1  | Unable to load the config, contains a configuration error.
airflow-scheduler-1  | Traceback (most recent call last):
airflow-webserver-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     from airflow.__main__ import main
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-webserver-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-scheduler-1  |     settings.initialize()
airflow-webserver-1  | 
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-webserver-1  | During handling of the above exception, another exception occurred:
airflow-scheduler-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-webserver-1  | 
airflow-scheduler-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-scheduler-1  |     raise e
airflow-webserver-1  |     handler = self.configure_handler(handlers[name])
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-webserver-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |     dictConfig(logging_config)
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-webserver-1  |     result = factory(**kwargs)
airflow-scheduler-1  |     dictConfigClass(config).configure()
airflow-webserver-1  |              ^^^^^^^^^^^^^^^^^
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-scheduler-1  |     raise ValueError('Unable to configure handler '
airflow-webserver-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  | ValueError: Unable to configure handler 'processor'
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-scheduler-1  | 
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
airflow-scheduler-1 exited with code 0
airflow-webserver-1 exited with code 0
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
airflow-webserver-1 exited with code 0
airflow-scheduler-1 exited with code 0
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
airflow-webserver-1  | ....................
airflow-scheduler-1  | During handling of the above exception, another exception occurred:
airflow-webserver-1  | ERROR! Maximum number of retries (20) reached.
airflow-scheduler-1  | 
airflow-webserver-1  | 
airflow-scheduler-1  | Traceback (most recent call last):
airflow-webserver-1  | Last check result:
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-webserver-1  | $ airflow db check
airflow-scheduler-1  |     handler = self.configure_handler(handlers[name])
airflow-webserver-1  | Unable to load the config, contains a configuration error.
airflow-scheduler-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |     result = factory(**kwargs)
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-scheduler-1  |              ^^^^^^^^^^^^^^^^^
airflow-webserver-1  | FileNotFoundError: [Errno 2] No such file or directory: '/opt/airflow/logs/scheduler/2024-10-31'
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-webserver-1  | 
airflow-scheduler-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-webserver-1  | During handling of the above exception, another exception occurred:
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-webserver-1  | 
airflow-scheduler-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-webserver-1  | Traceback (most recent call last):
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 608, in configure
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-webserver-1  |     handler = self.configure_handler(handlers[name])
airflow-scheduler-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-webserver-1  |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
airflow-scheduler-1  | 
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 876, in configure_handler
airflow-scheduler-1  | The above exception was the direct cause of the following exception:
airflow-webserver-1  |     result = factory(**kwargs)
airflow-scheduler-1  | 
airflow-webserver-1  |              ^^^^^^^^^^^^^^^^^
airflow-scheduler-1  | Traceback (most recent call last):
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/utils/log/file_processor_handler.py", line 53, in __init__
airflow-scheduler-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-webserver-1  |     Path(self._get_log_directory()).mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |     from airflow.__main__ import main
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1315, in mkdir
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-webserver-1  |     self.parent.mkdir(parents=True, exist_ok=True)
airflow-scheduler-1  |     settings.initialize()
airflow-webserver-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-webserver-1  |     os.mkdir(self, mode)
airflow-scheduler-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-webserver-1  | PermissionError: [Errno 13] Permission denied: '/opt/airflow/logs/scheduler'
airflow-scheduler-1  |                          ^^^^^^^^^^^^^^^^^^^
airflow-webserver-1  | 
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 74, in configure_logging
airflow-webserver-1  | The above exception was the direct cause of the following exception:
airflow-scheduler-1  |     raise e
airflow-webserver-1  | 
airflow-scheduler-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-webserver-1  | Traceback (most recent call last):
airflow-scheduler-1  |     dictConfig(logging_config)
airflow-webserver-1  |   File "/home/airflow/.local/bin/airflow", line 5, in <module>
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-webserver-1  |     from airflow.__main__ import main
airflow-scheduler-1  |     dictConfigClass(config).configure()
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/__init__.py", line 74, in <module>
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-webserver-1  |     settings.initialize()
airflow-scheduler-1  |     raise ValueError('Unable to configure handler '
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/settings.py", line 785, in initialize
airflow-scheduler-1  | ValueError: Unable to configure handler 'processor'
airflow-webserver-1  |     LOGGING_CLASS_PATH = configure_logging()
airflow-scheduler-1  | 
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
airflow-scheduler-1 exited with code 0
airflow-webserver-1 exited with code 0
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
airflow-scheduler-1 exited with code 0
airflow-webserver-1 exited with code 0
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
airflow-scheduler-1  | ....................
airflow-webserver-1  |     raise e
airflow-scheduler-1  | ERROR! Maximum number of retries (20) reached.
airflow-webserver-1  |   File "/home/airflow/.local/lib/python3.12/site-packages/airflow/logging_config.py", line 69, in configure_logging
airflow-scheduler-1  | 
airflow-webserver-1  |     dictConfig(logging_config)
airflow-scheduler-1  | Last check result:
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-scheduler-1  | $ airflow db check
airflow-webserver-1  |     dictConfigClass(config).configure()
airflow-scheduler-1  | Unable to load the config, contains a configuration error.
airflow-webserver-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-scheduler-1  | Traceback (most recent call last):
airflow-webserver-1  |     raise ValueError('Unable to configure handler '
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/pathlib.py", line 1311, in mkdir
airflow-webserver-1  | ValueError: Unable to configure handler 'processor'
airflow-scheduler-1  |     os.mkdir(self, mode)
airflow-webserver-1  | 
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
airflow-webserver-1 exited with code 0
airflow-scheduler-1 exited with code 0
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
airflow-webserver-1  | ....................
airflow-scheduler-1  |     dictConfig(logging_config)
airflow-webserver-1  | ERROR! Maximum number of retries (20) reached.
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 942, in dictConfig
airflow-webserver-1  | 
airflow-scheduler-1  |     dictConfigClass(config).configure()
airflow-webserver-1  | Last check result:
airflow-scheduler-1  |   File "/usr/local/lib/python3.12/logging/config.py", line 615, in configure
airflow-webserver-1  | $ airflow db check
airflow-scheduler-1  |     raise ValueError('Unable to configure handler '
airflow-webserver-1  | Unable to load the config, contains a configuration error.
airflow-scheduler-1  | ValueError: Unable to configure handler 'processor'
airflow-webserver-1  | Traceback (most recent call last):
airflow-scheduler-1  | 
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
airflow-scheduler-1 exited with code 0
airflow-webserver-1 exited with code 0
w Enable Watch
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
airflow-scheduler-1 exited with code 0
airflow-webserver-1 exited with code 0











Gracefully stopping... (press Ctrl+C again to force)
[+] Stopping 4/4
 ✔ Container 01-airflow-initial-airflow-webserver-1  Stopped                                                                                 0.6s 
 ✔ Container 01-airflow-initial-airflow-scheduler-1  Stopped                                                                                 0.5s 
 ✔ Container 01-airflow-initial-airflow-init-1       Stopped                                                                                 0.0s 
 ✔ Container 01-airflow-initial-postgres-1           Stopped                                                                                 0.5s 

  bash MEM: 22.12% | 1/7GB   1h 0m 56s 497ms                                                                       main ≡  ?1 ~1 
╭─ ♥ 18:35 | workspaces           01-airflow-initial 
╰─ https://www.st