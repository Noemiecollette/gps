#' Bind a list of data frames
#'
#' @description
#' This function takes a list of data frames and binds them
#' into a single data frame.
#'
#' @param data_format_list A list containing data frames to be combined.
#'
#' @return A data frame resulting from the binding of all
#' elements in `data_format_list`.
#'
#' @examples
#'
#' @export
#'
rbind_data <- function(data_format_list) {
  output <- c()
  n <- length(data_format_list)
  for (i in 1:n) {
    output <- rbind(output, data_format_list[[i]])
  }
  return(output)
}
