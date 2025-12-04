#' Combiner
#'
#' @data_format_list
#' liste de data formatees
#' 
#' output
#'
#'
rbind_data <- function(data_format_list)
{
  output <- c()
  n <- length(data_format_list)
  for (i in 1:n) {
    output <- rbind(output,data_format_list[[i]])
  }
  return(output)
}
