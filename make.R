devtools::install_deps(upgrade = "never")

devtools::load_all()

data<-read_bat_data()
data_format<-format_gps_list(data)
fusion_data<-rbind_data(data_format)
plot_speed <- plot_speed(fusion_data)
plot_lonvstime <- plot_longitude_time(fusion_data)
plot_latvstime <- plot_latitude_time(fusion_data)
map<-gpsdata_withmapview(fusion_data)
map
save_html(map)


targets::tar_make()

targets::tar_visnetwork()
