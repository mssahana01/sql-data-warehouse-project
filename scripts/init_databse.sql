/*
=============================================================
Database Initialization Script
=============================================================
Purpose:
    This script ensures a clean setup of the 'DataWarehouse' database. 
    If the database already exists, it will be dropped and recreated. 
    After creation, three schemas are established: 'bronze', 'silver', and 'gold'.

Note:
    Running this script will remove the existing 'DataWarehouse' database 
    and all of its data. Ensure backups are taken before execution.

*/

USE master;
GO

-- Drop and recreate the DataWarehouse database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
