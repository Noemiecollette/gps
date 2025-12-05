#' Lazy individual plots - STILL IN DEV
#'
#' @description
#' Visualize the movement of selected individuals on an interactive map.
#' This function creates a mapview object showing the locations, trajectories, 
#' and MCP (Minimum Convex Polygon) of each individual.
#'
#' @details
#' The input dataset should be a pre-processed and formatted data frame with at least the following columns:
#' \itemize{
#'   \item \code{tag_id}: individual identifier
#'   \item \code{lon}: longitude of the observation
#'   \item \code{lat}: latitude of the observation
#'   \item \code{date}: date of the observation (as Date)
#'   \item \code{datetime}: timestamp of the observation (as POSIXct)
#' }
#' This function will generate one MCP per individual and overlay trajectories and points on a mapview.
#'
#' @param individus Character vector of individual IDs to plot.
#' @param date_debut Character string representing the start date (format "YYYY-MM-DD").
#' @param date_fin Character string representing the end date (format "YYYY-MM-DD").
#'
#' @return A \code{mapview} object showing points, trajectories and MCP  for the selected individuals.
#'
#' @examples
#' # Suppose 'data_format' is your formatted dataset
#' afficher_trajets_mcp_valeur(
#'   individus = c("27"),
#'   date_debut = "2017-08-09",
#'   date_fin = "2017-08-10"
#' )
#'
#' @export

basicmetrics_foreachind <- function(fusion_data, individus, date_debut, date_fin) {
  # --- Conversion des dates pour être sûr ---
  data <- fusion_data %>%
    dplyr::mutate(
      date = as.Date(datetime),
      datetime = as.POSIXct(datetime)
    )

  subset_period <- data %>%
    dplyr::filter(
      tag_id %in% individus,
      date >= as.Date(date_debut),
      date <= as.Date(date_fin)
    ) %>%
    dplyr::arrange(tag_id, datetime)

  if(nrow(subset_period) == 0) stop("Aucun point pour cette période/individu")

  subset_sf <- sf::st_as_sf(subset_period, coords = c("lon", "lat"), crs = 4326)

  mcp_list <- list()
  for(ind in individus){
    df_ind <- subset_period %>% filter(tag_id == ind)
    sf_ind <- subset_sf %>% filter(tag_id == ind)

    if(nrow(df_ind) < 5) next

    pts <- as(sf_ind, "Spatial")
    mcp_obj <- adehabitatHR::mcp(pts, percent = 100)
    mcp_sf <- sf::st_as_sf(mcp_obj) %>% sf::st_transform(4326)

    area_m2 <- sf::st_area(mcp_sf)
    mcp_sf$popup <- paste0(
      "<b>ID :</b> ", ind,
      "<br><b>Surface :</b> ", round(as.numeric(area_m2)/10000, 1), " ha",
      "<br><b>Nb points :</b> ", nrow(df_ind)
    )

    mcp_list[[ind]] <- mcp_sf
  }

  traj <- subset_sf %>%
    dplyr::group_by(tag_id) %>%
    dplyr::summarise(do_union = FALSE) %>%
    sf::st_cast("LINESTRING")

  map <- mapview::mapview(traj, zcol = "tag_id", lwd = 2, legend = FALSE) +
    mapview::mapview(subset_sf, zcol = "tag_id", cex = 3,
                     popup = paste0("ID: ", subset_sf$tag_id, "<br>", subset_sf$datetime),
                     legend = FALSE)

  for(ind in names(mcp_list)){
    map <- map + mapview::mapview(
      mcp_list[[ind]],
      col.regions = "lightblue",
      alpha = 0.3,
      popup = mcp_list[[ind]]$popup,
      layer.name = paste0("MCP_", ind),
      legend = FALSE
    )
  }

  return(map)
}
basicmetrics_foreachind(
  fusion_data="fusion_data",
  "27",
  "2018-08-09",
  "2018-08-10")

