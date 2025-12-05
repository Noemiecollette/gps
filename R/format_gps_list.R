#' Format a list of GPS data frames
#'
#' @description
#' This function takes a list of raw GPS data frames and formats each one
#' by converting timestamps, renaming relevant columns, and selecting
#' only the required variables.
#'
#' @param data A list of raw GPS data frames to be formatted.
#'
#' @return A list of formatted GPS data frames, each containing:
#' `tag_id`, `datetime`, `lon`, `lat`, and `speed`.
#'
#' @details
#' For each element of `data`, the function:
#' - Converts `timestamp` to POSIXct (`datetime`).
#' - Renames movement and location columns.
#' - Keeps only standardised variables.
#' - Removes possible NULL elements from the output list.
#'
#' @examples
#'
#' @export

format_gps_list <- function(data) {
  data_format <- lapply(data, function(x) {
    x |>
      dplyr::mutate(
        datetime = as.POSIXct(timestamp, format = "%Y-%m-%d %H:%M:%S"),
        speed = `ground-speed`,
        tag_id = as.character(`tag-local-identifier`),
        lon = `location-long`,
        lat = `location-lat`
      ) |>
      dplyr::select(tag_id, datetime, lon, lat, speed)
  })
  data_format <- data_format[!sapply(data_format, is.null)]
}
