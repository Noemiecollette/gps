plot_speed <- function(gps_list) {
  gps_df <- dplyr::bind_rows(gps_list)

  # Plot speed through time for each individual
  p <- ggplot2::ggplot(gps_df, ggplot2::aes(x = datetime, y = speed)) +
    ggplot2::geom_line(linewidth = 0.4) +
    ggplot2::facet_wrap(~tag_id, scales = "free_y") +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      x = "Datetime",
      y = "Speed",
      title = "Speed through time for each individual"
    )

  # Build full output path using here()
  output_path <- here::here("outputs", filename)

  # Save the figure
  ggplot2::ggsave(
    filename = output_path,
    plot = p,
    width = 12,
    height = 8,
    dpi = 300
  )
}
