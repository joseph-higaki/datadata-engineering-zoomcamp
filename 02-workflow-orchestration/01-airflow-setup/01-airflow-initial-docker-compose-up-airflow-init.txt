docker compose up airflow-init
    WARN[0000] The "AIRFLOW_UID" variable is not set. Defaulting to a blank string. 
    WARN[0000] The "AIRFLOW_UID" variable is not set. Defaulting to a blank string. 
    [+] Running 37/2
    ✔ airflow-init Pulled                                                                                                                      96.8s 
    ✔ postgres Pulled                                                                                                                          27.7s 
    [+] Running 3/3
    ✔ Network 01-airflow-initial_default           Created                                                                                      0.1s 
    ✔ Container 01-airflow-initial-postgres-1      Created                                                                                      1.2s 
    ✔ Container 01-airflow-initial-airflow-init-1  Created                                                                                      0.1s 
    Attaching to airflow-init-1
    airflow-init-1  | 
    airflow-init-1  | WARNING!!!: AIRFLOW_UID not set!
    airflow-init-1  | If you are on Linux, you SHOULD follow the instructions below to set 
    airflow-init-1  | AIRFLOW_UID environment variable, otherwise files will be owned by root.
    airflow-init-1  | For other operating systems you can get rid of the warning with manually created .env file:
    airflow-init-1  |     See: https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html#setting-the-right-airflow-user
    airflow-init-1  | 
    airflow-init-1  | The container is run as root user. For security, consider using a regular user account.
    airflow-init-1  | 
    airflow-init-1  | DB: postgresql+psycopg2://airflow:***@postgres/airflow
    airflow-init-1  | Performing upgrade to the metadata database postgresql+psycopg2://airflow:***@postgres/airflow
    airflow-init-1  | [2024-10-31T16:28:33.442+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
    airflow-init-1  | [2024-10-31T16:28:33.444+0000] {migration.py:218} INFO - Will assume transactional DDL.
    airflow-init-1  | [2024-10-31T16:28:33.446+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
    airflow-init-1  | [2024-10-31T16:28:33.447+0000] {migration.py:218} INFO - Will assume transactional DDL.
    airflow-init-1  | INFO  [alembic.runtime.migration] Context impl PostgresqlImpl.
    airflow-init-1  | INFO  [alembic.runtime.migration] Will assume transactional DDL.
    airflow-init-1  | INFO  [alembic.runtime.migration] Running stamp_revision  -> 22ed7efa9da2
    airflow-init-1  | Database migrating done!
    airflow-init-1  | /home/airflow/.local/lib/python3.12/site-packages/flask_limiter/extension.py:333 UserWarning: Using the in-memory storage for tracking rate limits as no storage was explicitly specified. This is not recommended for production use. See: https://flask-limiter.readthedocs.io#configuring-a-storage-backend for documentation about configuring the storage backend.
    airflow-init-1  | [2024-10-31T16:28:37.785+0000] {override.py:1496} INFO - Inserted Role: Admin
    airflow-init-1  | [2024-10-31T16:28:37.791+0000] {override.py:1496} INFO - Inserted Role: Public
    airflow-init-1  | [2024-10-31T16:28:37.795+0000] {override.py:960} WARNING - No user yet created, use flask fab command to do it.
    airflow-init-1  | [2024-10-31T16:28:37.857+0000] {override.py:1900} INFO - Created Permission View: can edit on Passwords
    airflow-init-1  | [2024-10-31T16:28:37.865+0000] {override.py:1951} INFO - Added Permission can edit on Passwords to role Admin
    airflow-init-1  | [2024-10-31T16:28:37.875+0000] {override.py:1900} INFO - Created Permission View: can read on Passwords
    airflow-init-1  | [2024-10-31T16:28:37.882+0000] {override.py:1951} INFO - Added Permission can read on Passwords to role Admin
    airflow-init-1  | [2024-10-31T16:28:37.904+0000] {override.py:1900} INFO - Created Permission View: can edit on My Password
    airflow-init-1  | [2024-10-31T16:28:37.911+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role Admin
    airflow-init-1  | [2024-10-31T16:28:37.920+0000] {override.py:1900} INFO - Created Permission View: can read on My Password
    airflow-init-1  | [2024-10-31T16:28:37.928+0000] {override.py:1951} INFO - Added Permission can read on My Password to role Admin
    airflow-init-1  | [2024-10-31T16:28:37.946+0000] {override.py:1900} INFO - Created Permission View: can edit on My Profile
    airflow-init-1  | [2024-10-31T16:28:37.953+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role Admin
    airflow-init-1  | [2024-10-31T16:28:37.962+0000] {override.py:1900} INFO - Created Permission View: can read on My Profile
    airflow-init-1  | [2024-10-31T16:28:37.969+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.026+0000] {override.py:1900} INFO - Created Permission View: can create on Users
    airflow-init-1  | [2024-10-31T16:28:38.032+0000] {override.py:1951} INFO - Added Permission can create on Users to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.041+0000] {override.py:1900} INFO - Created Permission View: can read on Users
    airflow-init-1  | [2024-10-31T16:28:38.048+0000] {override.py:1951} INFO - Added Permission can read on Users to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.058+0000] {override.py:1900} INFO - Created Permission View: can edit on Users
    airflow-init-1  | [2024-10-31T16:28:38.066+0000] {override.py:1951} INFO - Added Permission can edit on Users to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.076+0000] {override.py:1900} INFO - Created Permission View: can delete on Users
    airflow-init-1  | [2024-10-31T16:28:38.084+0000] {override.py:1951} INFO - Added Permission can delete on Users to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.101+0000] {override.py:1900} INFO - Created Permission View: menu access on List Users
    airflow-init-1  | [2024-10-31T16:28:38.108+0000] {override.py:1951} INFO - Added Permission menu access on List Users to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.125+0000] {override.py:1900} INFO - Created Permission View: menu access on Security
    airflow-init-1  | [2024-10-31T16:28:38.132+0000] {override.py:1951} INFO - Added Permission menu access on Security to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.178+0000] {override.py:1900} INFO - Created Permission View: can create on Roles
    airflow-init-1  | [2024-10-31T16:28:38.185+0000] {override.py:1951} INFO - Added Permission can create on Roles to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.195+0000] {override.py:1900} INFO - Created Permission View: can read on Roles
    airflow-init-1  | [2024-10-31T16:28:38.204+0000] {override.py:1951} INFO - Added Permission can read on Roles to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.215+0000] {override.py:1900} INFO - Created Permission View: can edit on Roles
    airflow-init-1  | [2024-10-31T16:28:38.223+0000] {override.py:1951} INFO - Added Permission can edit on Roles to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.234+0000] {override.py:1900} INFO - Created Permission View: can delete on Roles
    airflow-init-1  | [2024-10-31T16:28:38.242+0000] {override.py:1951} INFO - Added Permission can delete on Roles to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.262+0000] {override.py:1900} INFO - Created Permission View: menu access on List Roles
    airflow-init-1  | [2024-10-31T16:28:38.271+0000] {override.py:1951} INFO - Added Permission menu access on List Roles to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.304+0000] {override.py:1900} INFO - Created Permission View: can read on User Stats Chart
    airflow-init-1  | [2024-10-31T16:28:38.311+0000] {override.py:1951} INFO - Added Permission can read on User Stats Chart to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.328+0000] {override.py:1900} INFO - Created Permission View: menu access on User's Statistics
    airflow-init-1  | [2024-10-31T16:28:38.335+0000] {override.py:1951} INFO - Added Permission menu access on User's Statistics to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.383+0000] {override.py:1900} INFO - Created Permission View: can read on Permissions
    airflow-init-1  | [2024-10-31T16:28:38.389+0000] {override.py:1951} INFO - Added Permission can read on Permissions to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.404+0000] {override.py:1900} INFO - Created Permission View: menu access on Actions
    airflow-init-1  | [2024-10-31T16:28:38.410+0000] {override.py:1951} INFO - Added Permission menu access on Actions to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.456+0000] {override.py:1900} INFO - Created Permission View: can read on View Menus
    airflow-init-1  | [2024-10-31T16:28:38.462+0000] {override.py:1951} INFO - Added Permission can read on View Menus to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.477+0000] {override.py:1900} INFO - Created Permission View: menu access on Resources
    airflow-init-1  | [2024-10-31T16:28:38.483+0000] {override.py:1951} INFO - Added Permission menu access on Resources to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.530+0000] {override.py:1900} INFO - Created Permission View: can read on Permission Views
    airflow-init-1  | [2024-10-31T16:28:38.536+0000] {override.py:1951} INFO - Added Permission can read on Permission Views to role Admin
    airflow-init-1  | [2024-10-31T16:28:38.552+0000] {override.py:1900} INFO - Created Permission View: menu access on Permission Pairs
    airflow-init-1  | [2024-10-31T16:28:38.558+0000] {override.py:1951} INFO - Added Permission menu access on Permission Pairs to role Admin
    airflow-init-1  | [2024-10-31T16:28:42.502+0000] {override.py:1585} INFO - Added user airflow
    airflow-init-1  | User "airflow" created with role "Admin"
    airflow-init-1  | 2.10.2
    airflow-init-1 exited with code 0