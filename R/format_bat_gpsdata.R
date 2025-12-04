#' Read species list file - WWF WildFinder
#'
#' @description 
#' Cette fonction formate le jeu de données, enlève les valeurs de NA et sélectionne les colonnes d'intérêt pour la suite des analyses 
#' `wildfinder-mammals_list.csv` stored in `data/wildfinder/`.
#'
#' @param file a character of length 1. The path to the csv file.
#'
#' @return 
#' 
#' @export

data_format <- data %>%
  dplyr::mutate(
    datetime <- as.POSIXct(timestamp, format="%Y-%m-%d %H:%M:%S"),
    speed <- ground-speed
    tag_id <- as.character(tag-local-identifier),
    lon <- location-long,
    lat <- location-long)


data<-dplyr::select(tag_id, datetime, lon, lat, speed)