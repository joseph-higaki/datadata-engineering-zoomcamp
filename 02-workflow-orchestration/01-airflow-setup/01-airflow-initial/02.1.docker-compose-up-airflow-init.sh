Attaching to airflow-init-1
airflow-init-1  | 
airflow-init-1  | DB: postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1  | Performing upgrade to the metadata database postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1  | [2024-10-31T18:40:56.189+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1  | [2024-10-31T18:40:56.191+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1  | [2024-10-31T18:40:56.193+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1  | [2024-10-31T18:40:56.194+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1  | Database migrating done!
airflow-init-1  | [2024-10-31T18:41:00.729+0000] {override.py:1496} INFO - Inserted Role: Admin
airflow-init-1  | [2024-10-31T18:41:00.734+0000] {override.py:1496} INFO - Inserted Role: Public
airflow-init-1  | [2024-10-31T18:41:00.738+0000] {override.py:960} WARNING - No user yet created, use flask fab command to do it.
airflow-init-1  | [2024-10-31T18:41:00.789+0000] {override.py:1900} INFO - Created Permission View: can edit on Passwords
airflow-init-1  | [2024-10-31T18:41:00.796+0000] {override.py:1951} INFO - Added Permission can edit on Passwords to role Admin
airflow-init-1  | [2024-10-31T18:41:00.805+0000] {override.py:1900} INFO - Created Permission View: can read on Passwords
airflow-init-1  | [2024-10-31T18:41:00.812+0000] {override.py:1951} INFO - Added Permission can read on Passwords to role Admin
airflow-init-1  | [2024-10-31T18:41:00.833+0000] {override.py:1900} INFO - Created Permission View: can edit on My Password
airflow-init-1  | [2024-10-31T18:41:00.839+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role Admin
airflow-init-1  | [2024-10-31T18:41:00.848+0000] {override.py:1900} INFO - Created Permission View: can read on My Password
airflow-init-1  | [2024-10-31T18:41:00.854+0000] {override.py:1951} INFO - Added Permission can read on My Password to role Admin
airflow-init-1  | [2024-10-31T18:41:00.872+0000] {override.py:1900} INFO - Created Permission View: can edit on My Profile
airflow-init-1  | [2024-10-31T18:41:00.878+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role Admin
airflow-init-1  | [2024-10-31T18:41:00.889+0000] {override.py:1900} INFO - Created Permission View: can read on My Profile
airflow-init-1  | [2024-10-31T18:41:00.895+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role Admin
airflow-init-1  | [2024-10-31T18:41:00.947+0000] {override.py:1900} INFO - Created Permission View: can create on Users
airflow-init-1  | [2024-10-31T18:41:00.952+0000] {override.py:1951} INFO - Added Permission can create on Users to role Admin
airflow-init-1  | [2024-10-31T18:41:00.960+0000] {override.py:1900} INFO - Created Permission View: can read on Users
airflow-init-1  | [2024-10-31T18:41:00.966+0000] {override.py:1951} INFO - Added Permission can read on Users to role Admin
airflow-init-1  | [2024-10-31T18:41:00.975+0000] {override.py:1900} INFO - Created Permission View: can edit on Users
airflow-init-1  | [2024-10-31T18:41:00.981+0000] {override.py:1951} INFO - Added Permission can edit on Users to role Admin
airflow-init-1  | [2024-10-31T18:41:00.991+0000] {override.py:1900} INFO - Created Permission View: can delete on Users
airflow-init-1  | [2024-10-31T18:41:00.998+0000] {override.py:1951} INFO - Added Permission can delete on Users to role Admin
airflow-init-1  | [2024-10-31T18:41:01.013+0000] {override.py:1900} INFO - Created Permission View: menu access on List Users
airflow-init-1  | [2024-10-31T18:41:01.020+0000] {override.py:1951} INFO - Added Permission menu access on List Users to role Admin
airflow-init-1  | [2024-10-31T18:41:01.037+0000] {override.py:1900} INFO - Created Permission View: menu access on Security
airflow-init-1  | [2024-10-31T18:41:01.043+0000] {override.py:1951} INFO - Added Permission menu access on Security to role Admin
airflow-init-1  | [2024-10-31T18:41:01.089+0000] {override.py:1900} INFO - Created Permission View: can create on Roles
airflow-init-1  | [2024-10-31T18:41:01.096+0000] {override.py:1951} INFO - Added Permission can create on Roles to role Admin
airflow-init-1  | [2024-10-31T18:41:01.104+0000] {override.py:1900} INFO - Created Permission View: can read on Roles
airflow-init-1  | [2024-10-31T18:41:01.110+0000] {override.py:1951} INFO - Added Permission can read on Roles to role Admin
airflow-init-1  | [2024-10-31T18:41:01.120+0000] {override.py:1900} INFO - Created Permission View: can edit on Roles
airflow-init-1  | [2024-10-31T18:41:01.126+0000] {override.py:1951} INFO - Added Permission can edit on Roles to role Admin
airflow-init-1  | [2024-10-31T18:41:01.134+0000] {override.py:1900} INFO - Created Permission View: can delete on Roles
airflow-init-1  | [2024-10-31T18:41:01.141+0000] {override.py:1951} INFO - Added Permission can delete on Roles to role Admin
airflow-init-1  | [2024-10-31T18:41:01.157+0000] {override.py:1900} INFO - Created Permission View: menu access on List Roles
airflow-init-1  | [2024-10-31T18:41:01.164+0000] {override.py:1951} INFO - Added Permission menu access on List Roles to role Admin
airflow-init-1  | [2024-10-31T18:41:01.192+0000] {override.py:1900} INFO - Created Permission View: can read on User Stats Chart
airflow-init-1  | [2024-10-31T18:41:01.200+0000] {override.py:1951} INFO - Added Permission can read on User Stats Chart to role Admin
airflow-init-1  | [2024-10-31T18:41:01.217+0000] {override.py:1900} INFO - Created Permission View: menu access on User's Statistics
airflow-init-1  | [2024-10-31T18:41:01.224+0000] {override.py:1951} INFO - Added Permission menu access on User's Statistics to role Admin
airflow-init-1  | [2024-10-31T18:41:01.274+0000] {override.py:1900} INFO - Created Permission View: can read on Permissions
airflow-init-1  | [2024-10-31T18:41:01.280+0000] {override.py:1951} INFO - Added Permission can read on Permissions to role Admin
airflow-init-1  | [2024-10-31T18:41:01.295+0000] {override.py:1900} INFO - Created Permission View: menu access on Actions
airflow-init-1  | [2024-10-31T18:41:01.303+0000] {override.py:1951} INFO - Added Permission menu access on Actions to role Admin
airflow-init-1  | [2024-10-31T18:41:01.347+0000] {override.py:1900} INFO - Created Permission View: can read on View Menus
airflow-init-1  | [2024-10-31T18:41:01.353+0000] {override.py:1951} INFO - Added Permission can read on View Menus to role Admin
airflow-init-1  | [2024-10-31T18:41:01.368+0000] {override.py:1900} INFO - Created Permission View: menu access on Resources
airflow-init-1  | [2024-10-31T18:41:01.374+0000] {override.py:1951} INFO - Added Permission menu access on Resources to role Admin
airflow-init-1  | [2024-10-31T18:41:01.418+0000] {override.py:1900} INFO - Created Permission View: can read on Permission Views
airflow-init-1  | [2024-10-31T18:41:01.423+0000] {override.py:1951} INFO - Added Permission can read on Permission Views to role Admin
airflow-init-1  | [2024-10-31T18:41:01.439+0000] {override.py:1900} INFO - Created Permission View: menu access on Permission Pairs
airflow-init-1  | [2024-10-31T18:41:01.448+0000] {override.py:1951} INFO - Added Permission menu access on Permission Pairs to role Admin
airflow-init-1  | [2024-10-31T18:41:04.654+0000] {override.py:1585} INFO - Added user airflow
airflow-init-1  | User "airflow" created with role "Admin"
airflow-init-1  | 2.10.2
[Kairflow-init-1 exited with code 0
