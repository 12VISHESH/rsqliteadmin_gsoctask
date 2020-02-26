dir.create("data_raw", showWarnings = FALSE)
download.file(url = "https://ndownloader.figshare.com/files/2292171",
              destfile = "data_raw/portal_mammals.sqlite", mode = "wb")
library(dplyr)
library(dbplyr)
mammals <- DBI::dbConnect(RSQLite::SQLite(), "data_raw/portal_mammals.sqlite")
src_dbi(mammals)
tbl(mammals, sql("SELECT year, species_id, plot_id FROM surveys"))
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