library(sqldf)

employess <- read.csv()

View(employess)

male_employess<- function(fn1){
  fn1("SELECT * FROM employess where gender ='m'")
  return(f1)
}

name_count_employee <- function(fn2){
  fn2("SELECT firstname,count(firstname) as occurancees
        FROM employes
        where firstname!='rudi'
        Group by firstname")
  return(fn2)
}

# using 'lower'to evaluate all names  as lowercase to ensure case insensitivity
employess_call <- function(fn3){
  fn3("SELECT*
        CASE
        WHEN lower(firstname)='stewart'THEN 1
        WHEN lower(firstname)='stewart'THEN 1
        WHEN lower(firstname)='stewart'THEN 1
        WHEN lower(firstname)='stewart'THEN 1
        ELSE 0
        FRom employess")
  return(fn3)
}

#multi- table operation#

left_join <- function(fn4){
  fn4("SELECT *
        from order b
        LEFt join employee a ona.id=b.id")
  return(f4)
} 

# "right join" isn't supported in sqldf but switiching order of tables and left join is equivalent function

right_join <- function(fn5){
  fn5("SELECT *
        FROM order b
        LEFT JOIN employee a ON a.id=b.id")
  return(fn5)
}


## for filtering the query we can pass many parameter like table name , column name,value

Queries_db <- function (table_name, column_names, values) {
    
    string <- paste ('SELECT * FROM', table_name, 'WHERE')

    n <- length(column_names)

    if (n != 1)
        for (i in 1: (n - 1))
            string <- paste (string, column_names[i], "=", values[i], "AND")
    
    string <- paste (string, column_names[n], "=", values[n])
    
    vish <- dbGetQuery (employee, string)
    
    return (vish)
}
