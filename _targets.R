library(targets)
tar_source()

list(
  tar_target(data, read_bat_data()),
  tar_target(data_format, format_gps_list(data)),
  tar_target(fusion_data, rbind_data(data_format)),
  tar_target(plot_speed_bat, plot_speed(fusion_data)),
  tar_target(plot_lon_time_bat, plot_longitude_time(fusion_data)),
  tar_target(plot_lat_time_bat, plot_latitude_time(fusion_data))
)
