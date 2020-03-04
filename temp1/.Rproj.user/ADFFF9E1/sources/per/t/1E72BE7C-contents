# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

library(SQLite)

vish<- dbConnect(drv="SQLite", dbname="country.sqlite")

vish

alltables <- dbListTables(vish)

r1 <- dbGetQuery( vish,'select * from populationtable' )

r2 <- dbGetQuery(vish, "SELECT population WHERE DATE(timeStamp) < DATE('now', 'weekday 0', '-7 days')")

dbClearResult(r2)
