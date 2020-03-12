library(sqldf)

employess <- read.csv()

View(employess)

male_employess<- function(sqldf){
  sqldf("SELECT * FROM employess where gender ='m'")
}

name_count_employee <- function(sqldf){
  sqldf("SELECT firstname,count(firstname) as occurancees
        FROM employes
        where firstname!='rudi'
        Group by firstname")
}

# using 'lower'to evaluate all names  as lowercase to ensure case insensitivity
employess_call <- function(sqldf){
  sqlfd("SELECT*
        CASE
        WHEN lower(firstname)='stewart'THEN 1
        WHEN lower(firstname)='stewart'THEN 1
        WHEN lower(firstname)='stewart'THEN 1
        WHEN lower(firstname)='stewart'THEN 1
        ELSE 0
        FRom employess")
}

#multi- table operation#

left_join <- function(sqldf){
  sqldf("SELECT *
        from order b
        LEFt join employee a ona.id=b.id")
} 

# "right join" isn't supported in sqldf but switiching order of tables and left join is equivalent function

right_join <- function(sqldf){
  sqldf("SELECT *
        FROM order b
        LEFT JOIN employee a ON a.id=b.id")
}
