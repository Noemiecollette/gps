library(tidyverse)

data_format <- data %>%
  dplyr::mutate(
    datetime <- as.POSIXct(timestamp, format="%Y-%m-%d %H:%M:%S"),
    speed <- ground-speed
    id <- as.character(id),
    lon <- location-long,
    lat <- location-long)


data<-dplyr::select(id, datetime, lon, lat, )