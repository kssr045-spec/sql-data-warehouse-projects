--Ware house project
/*
==============================================================
Create Database and Schemas
==============================================================
Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists,
	if the database exists, it is dropped and recreated . Additionally, the script sets up three schemas
	with the database: 'bronze','silver','gold'.

	WARNING:
	Running this script will drop the entrire 'DataWarehouse' database if it exists.
	All data in the database will be permanetly deleted. proceed with caution and ensure
	you have tproper backups before running this script.

*/


USE master;
GO
--Drop and recreate the database warehouse
If exists (select 1 from sys.databases where name = 'DataWarehouse')
BEGIN 
ALTER DATABASE DataWarehouse SET SINGLE_USER  WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END;
GO

create database DataWarehouse;

use DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;


