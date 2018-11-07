bgg_db <-
  read.csv("./data-raw/bgg_db_1806.csv") %>%
  mutate(
    mechanic = str_split(mechanic, ", "),
    category = str_split(category, ", ")
  )
devtools::use_data(bgg_db)
