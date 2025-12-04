# Package gpsdata4lazyscientists

[\[License: GPL-2\](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)

> This project is the result of the group project of the FRB-CESAB training "Reproducible Research in Computational Ecology".

This project aims to read some csv that are already downloaded in our github repository. The csv are tracking data of the [European free-tailed bat (*Tadarida teniotis*)](https://en.wikipedia.org/wiki/European_free-tailed_bat). They were downloaded from Teague O'Mara's Movebank study called ["3D flights of European free-tailed bats"](https://www.movebank.org/cms/webapp?gwt_fragment=page=studies,path=study312057662). This project has functions to read datasets, to format and then to combine them into one dataset.

## Content

This project is structured as follow:

```         
.
├── DESCRIPTION                             # Project metadata
├── LICENSE.md                              # License of the project
├── R                                       # Contains R functions
│   ├── README.md
│   ├── combine_data.R                      # Function to merge datasets
│   ├── format_bat_gpsdata.R                # Function to remove NA and remove columns 
│   └── read_bat_data.R
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

> Doe J (2024) Download PanTHERIA and WWF WildFinder databases. URL: <https://github.com/rdatatoolbox/practice-1>

## References

Jones KE, Bielby J, Cardillo M *et al.* (2009) PanTHERIA: A species-level database of life history, ecology, and geography of extant and recently extinct mammals. *Ecology*, 90, 2648. DOI: [10.1890/08-1494.1](https://doi.org/10.1890/08-1494.1)

World Wildlife Fund (2006) WildFinder: Online database of species distributions. Version Jan-06. URL: <https://www.worldwildlife.org/pages/wildfinder-database>.