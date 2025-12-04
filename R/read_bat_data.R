#' Read all CSV files into a named list
#'
#' @description
#' This function scans the `data/` directory for all `.csv` files,
#' reads them as data frames, stores them in a named list,
#' and assigns this list to the object `data` in the global environment.
#'
#' @details
#' The names of the list elements correspond to the CSV file names
#' without their extensions. The function returns a list in your Renvironment.
#'
#' @return A named list of data frames, returned invisibly.
#'
#' @examples
#' \dontrun{
#' read_bat_data()
#' data  # Access the list created in the global environment
#' }
#'
#' @export
#'
read_bat_data <- function() {
  path <- here::here("data")

  csv_files <- list.files(path, pattern = "\\.csv$", full.names = TRUE)

  data_list <- lapply(csv_files, readr::read_csv)

  names(data_list) <- tools::file_path_sans_ext(basename(csv_files))

  return(data_list)
}
