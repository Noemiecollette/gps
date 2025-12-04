devtools::install_deps(upgrade = "never")

devtools::load_all()

data<-read_bat_data()
data_format<-format_gps_list(data)
fusion_data<-rbind_data(data_format)
plot_speed<-plot_speed(fusion_data)