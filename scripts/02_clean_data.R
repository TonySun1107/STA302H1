
#### Clean ####
#purpose: Clean data downloaded from Toronto Open Data Portal
#Author: Wentao Sun
#Email: wentaosun196@gmail.com
#Date: 23 January 2024
#Pre-requisites: install packages

traffic_data <- read_csv(here::here("input/data/traffic_collisions.csv")) |>
  clean_names() |>
  drop_na(occ_year)


traffic_flow <- read_csv(here::here("input/data/raw_data_2020_2029.csv")) |>
  clean_names() |>
  drop_na()
