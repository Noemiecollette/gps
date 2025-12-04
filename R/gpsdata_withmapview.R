library(dplyr)
library(sf)
library(mapview)
library(lubridate)

gpsdata_withmapview <- function(data) {
  data_sf <- st_as_sf(data, coords = c(lon, lat), crs = 4326)
  tracks_sf <- data_sf %>%
    arrange(id, datetime) %>%
    group_by(id) %>%
    summarise(do_union = FALSE) %>%
    st_cast("LINESTRING")
  # Création de la carte mapview
  map_obj <- mapview(data_sf, zcol = id, legend = TRUE, layer.name = "Points") +
    mapview(tracks_sf, zcol = id, lwd = 2, legend = FALSE, layer.name = "Tracks")

  return(list(
    points_sf = data_sf,
    tracks_sf = tracks_sf,
    map = map_obj
  ))
}

# result <- creer_map_gps(data)
# result$map  # Affiche la carte
