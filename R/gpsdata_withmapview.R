#' Create a magnificent plot from your GPS data with all individual tracks
#'
#' @description
#' This function provides a simple and interactive way to visualize GPS data for multiple individuals.
#' It generates a mapview object showing both individual points and trajectories.
#'
#' @details
#' The input dataset should be a pre-processed and formatted data frame with at least the following columns:
#' \itemize{
#'   \item tag_id: individual identifier
#'   \item lon: longitude of the observation
#'   \item lat: latitude of the observation
#'   \item datetime: timestamp of the observation (as POSIXct or character convertible)
#' }
#' The function will automatically convert the data to an sf object, 
#' construct LINESTRING trajectories per individual, and display them on a mapview.
#'
#' @param data A data frame containing the GPS points. Must include columns \code{tag_id}, \code{lon}, \code{lat}, and \code{datetime}.
#'
#' @return A \code{mapview} object displaying:
#' \itemize{
#'   \item Individual GPS points
#'   \item Trajectories (LINESTRING) per individual
#' }
#'
#' @examples
#' # Suppose 'fusion_data' is your pre-processed GPS dataset
#' gpsdata_withmapview(fusion_data)
#'
#' @export
#' 

library(tidyverse)
library(sf)
library(mapview)
library(lubridate)

gpsdata_withmapview <- function(data) {
  
  # Conversion en sf
  data_sf <- sf::st_as_sf(data, coords = c("lon", "lat"), crs = 4326)
  
  # Construction des trajectoires
  tracks_sf <- data_sf |>
    dplyr::arrange(tag_id, datetime) |>
    dplyr::group_by(tag_id) |>
    dplyr::summarise(do_union = FALSE) |>
    sf::st_cast("LINESTRING")
  
  # Génération de la carte
  map_obj <- mapview::mapview(
    data_sf,
    zcol = "tag_id",
    legend = TRUE,
    layer.name = "Points"
  ) +
    mapview::mapview(
      tracks_sf,
      zcol = "tag_id",
      lwd = 2,
      legend = FALSE,
      layer.name = "Tracks"
    )
  
    mapview::mapshot(map_obj, file = file.path("figures", filename))

  return(map_obj)
}

  