# this for  database query
#
# This is an example function named 'database'
# which prints 'query'.
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
db <- function (table_name, column_names, values) {

  string <- paste ('SELECT * FROM', table_name, 'WHERE')

  n <- length(column_names)

  if (n != 1)
    for (i in 1: (n - 1))
      string <- paste (string, column_names[i], "=", values[i], "AND")

  string <- paste (string, column_names[n], "=", values[n])

  vish <- dbGetQuery (employee, string)

  return (vish)
}
