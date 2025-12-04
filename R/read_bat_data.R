#' Read bat list file
#'
#' @description
#' Cette fonction lit les documents .csv contenu dans le dossier "data".
#' Les données sont téléchargées depuis la base de données "MoveBank"
#'
#' @param
#' The path to the csv file.
#'
#' @return
#' A list with all .csv file
#'
#' @export
#'
#'
read_bat_data <- function() {
  path <- here::here("data")

  csv_files <- list.files(path, pattern = "\\.csv$", full.names = TRUE)

  data_list <- lapply(csv_files, readr::read_csv)

  names(data_list) <- tools::file_path_sans_ext(basename(csv_files))

  assign("data", data_list, envir = .GlobalEnv)

  invisible(data_list)
}
