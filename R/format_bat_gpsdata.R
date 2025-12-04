#' Formatage de data GPS
#'
#' @description 
#' Cette fonction formate le jeu de données, enlève les valeurs de NA et sélectionne les colonnes d'intérêt pour la suite des analyses.
#'
#' @param file data une liste de .csv
#'
#' @return 
#' 
#' @export


format_gps_list <- function(data) {
  data_format <- lapply(data, function(x) {
    x %>%
      dplyr::mutate(
        datetime = as.POSIXct(timestamp, format = "%Y-%m-%d %H:%M:%S"),
        speed    = `ground-speed`,
        tag_id   = as.character(`tag-local-identifier`),
        lon      = `location-long`,
        lat      = `location-lat`
      ) %>%
      dplyr::select(tag_id, datetime, lon, lat, speed)
    
  })
    data_format <- data_format[!sapply(data_format, is.null)]
  assign("data_format", data_format, envir = .GlobalEnv)
  
write.csv(lapply(data_format), )

}
