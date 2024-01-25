
#### preamble ####
#purpose: Downloaded data from Toronto Open Data Portal
#Author: Wentao Sun
#Email: wentaosun196@gmail.com
#Date: 23 January 2024
#Pre-requisites: download data

#install.packages("opendatatoronto")
#install.packages("knitr")
#install.packages("janitor")
#install.packages("lubridate")
#install.packages("tidyverse")

library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)

#### Acquire ####
traffic_collisions <-
  list_package_resources("ec53f7b2-769b-4914-91fe-a37ee27a90b3") |>
  # Within that package, we are interested in dataset
  filter(name == 
           "Traffic Collisions - 4326.csv") |>
  # Having reduced the dataset to one row we can get the resource
  get_resource()

write_csv(
  x = traffic_collisions,
  file = "traffic_collisions.csv"
)

head(traffic_collisions)
