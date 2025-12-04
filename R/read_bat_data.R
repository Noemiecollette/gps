read_bat_data <- function() {
  path <- here::here("data")

  bat1 <- readr::read_csv(file.path(path, "Bat1_3D6001852B958.csv"))
  bat2 <- readr::read_csv(file.path(path, "Bat2_3D6001852B95D.csv"))
  bat3 <- readr::read_csv(file.path(path, "Bat3_3D6001852B978.csv"))
  bat4 <- readr::read_csv(file.path(path, "Bat4_3D6001852B980.csv"))
  bat5 <- readr::read_csv(file.path(path, "Bat5_3D6001852B98C.csv"))
  bat6 <- readr::read_csv(file.path(path, "Bat6_3D6001852B98E.csv"))
  bat7 <- readr::read_csv(file.path(path, "Bat7_3D6001852B9A3.csv"))
  bat8 <- readr::read_csv(file.path(path, "Bat8_3D6001852B9A7.csv"))

  data_bat = list(
    bat1 = bat1,
    bat2 = bat2,
    bat3 = bat3,
    bat4 = bat4,
    bat5 = bat5,
    bat6 = bat6,
    bat7 = bat7,
    bat8 = bat8
  )

  return(data_bat)
}
