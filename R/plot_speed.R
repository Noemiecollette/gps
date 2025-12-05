#' Plot speed through time for each individual
#'
#' @description
#' This function takes a data frame containing GPS data and generates a plot
#' showing the speed through time for each individual (`tag_id`). The plot is
#' saved in the `outputs` directory using `here::here()`.
#'
#' @param gps_list A data frame containing the columns `datetime`, `speed`,
#' and `tag_id`.
#'
#' @return Saves the plot to the outputs directory and prints it.
#'
#' @export

plot_speed <- function(gps_list) {
  # Plot speed through time for each individual
  p <- ggplot2::ggplot(gps_list, ggplot2::aes(x = datetime, y = speed)) +
    ggplot2::geom_line(linewidth = 0.4) +
    ggplot2::facet_wrap(~tag_id, scales = "free_y") +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      x = "Datetime",
      y = "Speed",
      title = "Speed through time for each individual"
    )

  # Build full output path using here()
  output_path <- here::here("figures", "Figure_speed.png")

  # Save the figure
  ggplot2::ggsave(
    filename = output_path,
    plot = p,
    width = 12,
    height = 8,
    dpi = 300
  )
}
