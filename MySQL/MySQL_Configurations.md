## USE MySQL throught CLI (For Windows)
- Change directory
  ```
  cd C:\Program Files\MySQL\MySQL Server 8.0\bin
  ```
- Login as root user
  ```
  mysql -u root -p
  ```
- To see all database
  ```
  SHOW DATABASES;
  ```
- To see all TABLES in mysql Database
  ```
  USE mysql;
  SHOW TABALES;
  ```
 
## CREATING A NEW USER ACCOUNT
- Open MySql Workbench

- Loing with root user

- Go to Administration (It is in the navigator mostly on your left of workbench) --> MANAGEMENT --> User and Previleges

- Click on "Add Account" button

- Provide Below details,
  - Login name : it is user name. Eg: admin
  - Auth type: caching_sha2_password
  - Limit to host matching : localhost
  - passowd : enter your passowd
  - confirm passowd : re enter your password

- To create through CLI
  https://www.hostinger.in/tutorials/mysql/how-create-mysql-user-and-grant-permissions-command-line
  eg: Creating user "read1" and applying roles
  ```
  $ CREATE USER "read1"@"localhost" IDENTIFIED BY "temppass";
  ```

- To add schemas(it contains tables) from root to users(like: admin). You need to login with root user
   Administrator --> Management --> User and Previleges --> admin --> Schema Previlages --> Add Entry
   --> Select Schema --> Apply any previlages that you want

## CREATING ACCESSING ROLES
If we have multiple users and wanted to assign similar
permissions then we can create roles and assing them.
Make sure you login as 'root' user.
- Creating 3 roles
  ```
  $ CREATE ROLE 'app_dev', "app_read", "app_test";
  ```

- To grant all permssion for "world" database and it's table to "app_dev" role
  ```
  $ GRANT ALL ON WORLD.* TO "app_dev";
  ```

- To grant specific permissions
  ```
  $ GRANT SELECT ON WORLD.* TO "app_read";
  $ GRANT UPDATE, INSERT, DELETE ON WORLD.* TO "app_test";
  ```

- Creating user "read1" and applying roles
  ```
  $ CREATE USER "read1"@"localhost" IDENTIFIED BY "temppass";
  $ GRANT "app_read" TO "read1"@"localhost";
  ```
- By default above request is not active, to active that
  ```
  $ SET DEFAULT ROLE "app_read" TO "read1"@"localhost";
  ```
- Activating all roles for all users by default
  ```
   $ SET PERSIST activate_all_roles_on_login = ON;
  ```

Resources:
https://www.linkedin.com/learning/mysql-installation-and-configuration/access-roles?autoSkip=true&autoplay=true&resume=false


## DROPPING USERS AND ROLES USING CLI
Login as root user to execute below queries
- To drop user
  ```
  $ DROP USER "read1"@"localhost";
  ```

- To drop a role
  ```
  $ DROP ROLE "app_test";
  ```

## PASSWORD EXPIRATION
Login as root user to execute below queries
- To revoke users passwords
  ```
  $ ALTER USER "tempuser"@"localhost" PASSWORD EXPIRE;
  ```
- Setting password expiration days
  ```
  $ ALTER USER "tempuser"@"localhost" PASSWORD EXPIRE INTERNAL 90 DAY;
  $ ALTER USER "tempuser"@"localhost" PASSWORD EXPIRE INTERNAL NEVER; --> PASSWORD WILL NEVER EXPIRE
  $ ALTER USER "tempuser"@"localhost" PASSWORD EXPIRE DEFAULT;
  ```

## STORAGE ENGINES
MySQL support different storage systems through plugin system. Most of the storage engine ships with storage systems.
- InnoDB    : It's a default storage engine. It supports most of the transactions, row-level locking and foreign keys
- MyISAM    : It is a legacy storage engine.
- MEMEORY   : The memory engine is useful for temporary objects. It is fast and efficient, but not persistent.
              Memory stores data in RAM so it's fast but ethereal.
- CSV       : The CSV engine can be useful for importing and exporting data in CSV format.
- BLACKHOLE : The BLACKHOLE engine is like devnul on Unix.
- ARCHIVE   : The Archive engine is used for storing data for archival purposes.
- FEDERATED : A local federated table can automatically pull data from a remote server. No data is stored locally

- To see all all engine through CLI 
  ```
  $ SHOW ENGINES;
  ```

## OTHER IMPORTANT DETAILS
- MySQL ports are managed at the server level not the user level and all users use same port. By default it is 3306.


