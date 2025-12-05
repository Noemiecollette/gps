library(htmlwidgets)

#' Sauvegarder un objet mapview en HTML
#'
#' @param map_obj Objet mapview à sauvegarder
#' @param folder Dossier où sauvegarder le fichier
#' @param filename Nom du fichier HTML (par défaut "map.html")
#' @return Chemin complet du fichier HTML sauvegardé
save_html <- function(map_obj, folder = "figures", filename = "map.html") {

  if(!dir.exists(folder)) dir.create(folder)

  # Extraire la carte leaflet
  if(inherits(map_obj, "mapview")) {
    widget <- map_obj@map
  } else {
    widget <- map_obj
  }

  file_html <- file.path(folder, filename)
  htmlwidgets::saveWidget(widget, file_html, selfcontained = TRUE)

  message("Carte HTML sauvegardée ici : ", normalizePath(file_html))
  return(normalizePath(file_html))
}
