# Document connection

## using SQLite library 

SQLite is a software library that provides a relational database management system. The lite in SQLite means light weight in terms of setup, database administration, and required resource.SQLite uses dynamic types for tables. It means you can store any value in any column, regardless of the data type.

Working on big data requires a clean and robust approach on storing and accessing the data. SQLite is an all inclusive server-less database system in a single file. This is very convenient for data exchange between colleagues. Here is a workflow of SQLite data accessing and data storing in R.

### Workflow of SQLite->

library(SQLite)       importing the SQLite in R enviroment 

Vish = dbConnect(drv="SQLite", dbname="country.sqlite")    connecting the SQLite file

alltables = dbListTables(con) get alist of table 






## Using DBI 
