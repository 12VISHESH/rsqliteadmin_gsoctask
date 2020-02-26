dir.create("data_raw", showWarnings = FALSE)

download.file(url = "https://ndownloader.figshare.com/files/2292171",
              destfile = "data_raw/portal_mammals.sqlite", mode = "wb") ##loading the file 
library(dplyr) ##importing the library for connecting database 
library(dbplyr) ##importing the library for connecting database
mammals <- DBI::dbConnect(RSQLite::SQLite(), "data_raw/portal_mammals.sqlite") ##connecting database 
src_dbi(mammals) ## checking the connectivity
tbl(mammals, sql("SELECT year, species_id, plot_id FROM surveys")) ##Querying the database with the SQL syntax
surveys <- tbl(mammals, "surveys")
surveys %>%
  select(year, species_id, plot_id)
head(surveys, n = 10)
nrow(surveys)
data_subset <- surveys %>%
  filter(weight < 5) %>%
  select(species_id, sex, weight)

data_subset %>%
  select(-sex)
plots <- tbl(mammals, "plots")
plots
surveys
show_query(head(surveys,n=10))
surveys %>%
  filter(weight<6)%>%
  select(species_id, sex, weight)
data_subset%>%
  select(-sex)
