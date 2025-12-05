#' Plot latitude through time for each individual
#'
#' @description
#' This function takes a data frame containing GPS data and generates a plot
#' showing latitude through time, with individuals distinguished by colors.
#' The plot is saved in the `figure` directory.
#'
#' @param gps_df A data frame containing the columns `datetime`, `lat`,
#' and `tag_id`.
#'
#' @return Saves the plot to the outputs directory and prints it.
#'
#' @export
plot_latitude_time <- function(gps_df) {
  # Plot latitude through time with colors by individual
  p <- ggplot2::ggplot(
    gps_df,
    ggplot2::aes(x = datetime, y = lat, color = tag_id)
  ) +
    ggplot2::geom_line(linewidth = 0.4) +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      x = "Datetime",
      y = "Latitude",
      color = "Tag ID",
      title = "Latitude through time"
    )

  # Build output path
  output_path <- here::here("figures", "Figure_latitude_time.png")

  # Save figure
  ggplot2::ggsave(
    filename = output_path,
    plot = p,
    width = 12,
    height = 8,
    dpi = 300
  )
}
