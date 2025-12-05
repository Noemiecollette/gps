devtools::install_deps(upgrade = "never")

devtools::load_all()

targets::tar_make()

targets::tar_visnetwork()

quarto::quarto_render("Presentation.qmd")
