## code to prepare `DATASET` dataset goes here

nba_df <- read.csv("data-raw/Seasons_Stats_NBA.csv")
usethis::use_data(nba_df)

