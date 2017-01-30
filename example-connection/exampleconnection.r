library(DBI)
library(RPostgres)

con <- dbConnect(RPostgres::Postgres(),
                 host = "host",
                 port = 1337,
                 user = "user",
                 password = "password",
                 dbname = "dbname")


dbExistsTable(con, "hamburgers") # TRUE