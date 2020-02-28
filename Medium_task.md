# Document connection

## using SQLite library 

SQLite is a software library that provides a relational database management system. The lite in SQLite means light weight in terms of setup, database administration, and required resource.SQLite uses dynamic types for tables. It means you can store any value in any column, regardless of the data type.

Working on big data requires a clean and robust approach on storing and accessing the data. SQLite is an all inclusive server-less database system in a single file. This is very convenient for data exchange between colleagues. Here is a workflow of SQLite data accessing and data storing in R.

### Workflow of SQLite->

> library(SQLite)       importing the SQLite in R enviroment 

> vish<- dbConnect(drv="SQLite", dbname="country.sqlite")&nbsp;&nbsp;    ,connecting the SQLite file

> vish  &nbsp;&nbsp;&nbsp; ,check wether the connection is established

> alltables <-  dbListTables(vish)&nbsp;&nbsp;&nbsp;,get alist of table 

> r1 <- dbGetQuery( vish,'select * from populationtable' )&nbsp;&nbsp;&nbsp;&nbsp; ,get the population table as data frame.

> r2  <- dbGetQuery(vish, "SELECT population WHERE DATE(timeStamp) < DATE('now', 'weekday 0', '-7 days')")&nbsp;&nbsp;&nbsp;, find the entry  opf tyhe databas efrom last week

> dbClearResult(r2)&nbsp;&nbsp; Clear the result of last screen
## Using DBI 
