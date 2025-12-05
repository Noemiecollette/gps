#' Plot longitude through time for each individual
#'
#' @description
#' This function takes a data frame containing GPS data and generates a plot
#' showing longitude through time, with individuals distinguished by colors.
#' The plot is saved in the `figure` directory.
#'
#' @param gps_df A data frame containing the columns `datetime`, `lon`,
#' and `tag_id`.
#'
#' @return Saves the plot to the outputs directory and prints it.
#'
#' @export
plot_longitude_time <- function(gps_df) {
  # Plot longitude through time with colors by individual
  p <- ggplot2::ggplot(
    gps_df,
    ggplot2::aes(x = datetime, y = lon, color = tag_id)
  ) +
    ggplot2::geom_line(linewidth = 0.4) +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      x = "Datetime",
      y = "Longitude",
      color = "Tag ID",
      title = "Longitude through time"
    )

  # Build output path
  output_path <- here::here("figures", "Figure_longitude_time.png")

  # Save figure
  ggplot2::ggsave(
    filename = output_path,
    plot = p,
    width = 12,
    height = 8,
    dpi = 300
  )
}
