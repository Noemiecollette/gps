# Project gpsdata4lazyscientists

[![License: GPL-2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)

> This project is the result of the group project of the FRB-CESAB training "Reproducible Research in Computational Ecology".

This project aims to read some csv that are already downloaded in our github repository. The csv are tracking data of the [European free-tailed bat (*Tadarida teniotis*)](https://en.wikipedia.org/wiki/European_free-tailed_bat). They were downloaded from Teague O'Mara's Movebank study called ["3D flights of European free-tailed bats"](https://www.movebank.org/cms/webapp?gwt_fragment=page=studies,path=study312057662). This project has functions to read datasets, to format and then to combine them into one dataset.

## Content

This project is structured as follow:

```         
.
├── DESCRIPTION                             # Project metadata
├── LICENSE.md                              # License of the project
├── Presentation.html                       # HTML format of our presentation
├── Presentation.qmd                        # QMD format of our presentation
├── R                                       # Contains R functions
│   ├── README.md
│   ├── combine_data.R                      # Function to merge datasets
│   ├── format_gps_list.R                   # Function to remove NA and remove columns
│   ├── gpsdata_withmapview.R               # Function to plot map of tracking data 
│   └── read_bat_data.R                     # Open the tracking data
│   └── speed.R                             # Calculate speed of the individuals
├── README.md                               # Presentation of the project
├── analyses                                # Contains R scripts
│   └── README.md
├── data                                    # Contains raw data
│   ├── Bat1_3D6001852B958.csv
│   ├── Bat2_3D6001852B95D.csv
│   ├── Bat3_3D6001852B978.csv
│   ├── Bat4_3D6001852B980.csv
│   ├── Bat5_3D6001852B98C.csv
│   ├── Bat6_3D6001852B98E.csv
│   ├── Bat7_3D6001852B9A3.csv
│   ├── Bat8_3D6001852B9A7.csv
│   └── README.md
├── figures                                 # Folders with our output figures
│   └── README.md
├── make.R                                  # Script to setup & run the project
└── outputs
    └── README.md
```

![Gaelle](IMG_4395.JPG){#fig-gaelle}

Big up à Gaelle pour cet arbre généré de façon **automatique** ;)

## Installation

To install this compendium:

-   [Fork](https://github.com/Noemiecollette/gps.git) this repository using the GitHub interface.
-   Open [Positron IDE](https://positron.posit.co/) and create a **New Folder from Git** to clone your fork.

## Usage

Open this project in Positron IDE and launch analyses by running:

``` r
source("make.R")
```

-   All packages will be automatically installed and loaded
-   Resulting figures will be saved in the `figures/` directory

## License

This project is released under the [GPL-2](https://choosealicense.com/licenses/gpl-2.0/) license.

## Citation

> Boswarthick R., Collette N., Mac Call M., Miguet P., Picon G. (2025) gpsdata4lazyscientists: A package for preparing GPS tracking data, dedicated to lazy scientists. URL: <https://github.com/Noemiecollette/gps.git>