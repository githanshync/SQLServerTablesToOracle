# SQL Server Tables to Oracle.
Example of migration of SQL Server tables to Oracle via SSIS.
## Minimum requirements:
-	Visual Studio 2022 (import solution SQLServerTablesToOracle).
-	SQL Server 2022 (as source database).
-	Oracle 12c or 19c (as target database).
-	Install Microsoft Connector for Oracle V1.2 (MicrosoftSSISOracleConnector-SQL22-x86.msi). https://www.microsoft.com/en-us/download/details.aspx?id=29284
-	Install SSIS for Visual Studio 2022 (Microsoft.DataTools.IntegrationServices.exe). https://marketplace.visualstudio.com/items?itemName=SSIS.MicrosoftDataToolsIntegrationServices
-	Download WideWorldImporters-Full.bak backup of sample database "WideWorldImporters" and restore in source server: https://github.com/Microsoft/sql-server-samples/releases/tag/wide-world-importers-v1.0
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

*Control flow:*

![Control Flow](https://github.com/githanshync/SQLServerTablesToOracle/blob/master/-img/ControlFlow.JPG)

*Data Flow 1:*

![Control Flow](https://github.com/githanshync/SQLServerTablesToOracle/blob/master/-img/DataFlow1.JPG)

*Data Flow 2:*

![Control Flow](https://github.com/githanshync/SQLServerTablesToOracle/blob/master/-img/DataFlow2.JPG)
