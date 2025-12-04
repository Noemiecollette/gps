# Presentation

[![License: GPL-2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)

The package gpsdata4lazyscientists aims to provide a tool for lazy scientists who don't want to spend hours downloading, cleaning and formatting their GPS datasets.

# Content

It is structured as follow:

```         
.
├─ README.md                                  # Presentation of the project
├─ DESCRIPTION                                # Project metadata
├─ LICENSE.md                                 # License of the project
|
├─ data/                                      # Contains raw data
|  ├─ pantheria/                              # PanTHERIA database
|  |  └─ PanTHERIA_1-0_WR05_Aug2008.txt
|  |
|  └─ wildfinder/                             # WWF WildFinder database
|     ├─ wildfinder-ecoregions_list.csv
|     ├─ wildfinder-ecoregions_species.csv
|     └─ wildfinder-mammals_list.csv
|
├─ R/                                         # Contains R functions (only)
|  ├─ count_ecoregions.R                      # Function to count ecoregions per species
|  ├─ dl_wildfinder_data.R                    # Function to download WildFinder data
|  ├─ dl_pantheria_data.R                     # Function to download PanTHERIA data
|  ├─ join_tables.R                           # Function to merge WildFinder tables
|  ├─ plot_counts.R                           # Function to make the barplot
|  ├─ read_data.R                             # Function to import WildFinder tables
|  └─ select_species.R                        # Function to subset WildFinder species
|
├─ analyses/                                  # Contains R scripts
|  └─ download-data.R                         # Script to download raw data
|
├─ index.qmd                                  # Quarto report
├─ index.html                                 # Quarto result (html page)
|
└─ make.R                                     # Script to setup & run the project
```

# Installation

To install the package:

```
remotes::install_github("Noemiecollette/gps")
```

## Usage

Launch analyses by running:

``` r
source("make.R")
```

-   All packages will be automatically installed and loaded
-   Raw data will be saved in the `data/` directory
-   Final data will be saved in the `outputs/` directory

## License

This project is released under the [GPL-2](https://choosealicense.com/licenses/gpl-2.0/) license.

## Citation

> Boswarthick R., Collette N., Mac Call M., Miguet P., Picon G. (2025) gpsdata4lazyscientists: A package for preparing GPS tracking data, dedicated to lazy scientists. URL: <https://github.com/Noemiecollette/gps.git>