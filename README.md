# SQLServerTablesToOracle
Example of migration of SQL Server 2022 tables to Oracle 19c.
## Minimum requirements:
-	Visual Studio 2019 (import this solution).
-	SQL Server 2022 or SQL Server Express 20222 (source database).
-	Oracle 19c (target database).
-	Download WideWorldImporters-Full.bak backup of sample database "WideWorldImporters" and restore in server source: https://github.com/Microsoft/sql-server-samples/releases/tag/wide-world-importers-v1.0
## To run the ssis package.
In the source database with user sa (MSSQL):
-	Create login sou_user1 with privilege "db_datareader" on the sample database "WideWorldImporters".
In the target database (Oracle), use the scripts from the “-SCRIPTS” folder:
-	Create the user-schema "USERTEST".
-	Create the tables PEOPLE and PURCHASEORDERS.
## In the Visual Studio project:
In connection manager:
-	Update the "Server or file name" field with your server name or ip and instance (source database): [SERVER1]/[MSSQLSERVER]
-	Update the "tns service name" field (target database). 
-	And update the password for the user USERTEST in the password field.
