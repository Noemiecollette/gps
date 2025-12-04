# Fonction pour fusionner les fichiers de données
rbind_data <- function(chemin,motif_fichier)
{
  files_list <- list.files(chemin,pattern='Bat')
  output <- c()
  if (length(files_list)==0) {
    warning("Pas de fichiers dans le répertoire")
  }
  output <- c()
  for (file in files_list) {
    data_f <- readr::read_csv(here::here(chemin,file), show_col_types = FALSE)
    output <- rbind(output,data_f)
  }
  return(output)
}