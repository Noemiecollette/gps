# Package gpsdata4lazyscientists

[![License: GPL-2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)

> \[!IMPORTANT\]\
> This project is the result of the Practice 2 of the training course [Reproducible Research in Computational Ecology](https://rdatatoolbox.github.io).

This project aims to download the [PanTHERIA](https://doi.org/10.1890/08-1494.1) database (Jones *et al.*, 2009) and the [WWF WildFinder](https://www.worldwildlife.org/pages/wildfinder-database) database (World Wildlife Fund 2006). It is structured as a research compendium to be reproducible.

## Content

This project is structured as follow:

```         
.
├── DESCRIPTION                                # Project metadata
├── LICENSE.md                                 # License of the project
├── R                                          # Contains R functions
│   └── README.md
├── README.md                                  # Presentation of the project
├── analyses                                   # Contains R scripts
│   └── README.md
├── data                                       # Contains raw data
│   ├── Bat1_3D6001852B958.csv
│   ├── Bat2_3D6001852B95D.csv
│   ├── Bat3_3D6001852B978.csv
│   ├── Bat4_3D6001852B980.csv
│   ├── Bat5_3D6001852B98C.csv
│   ├── Bat6_3D6001852B98E.csv
│   ├── Bat7_3D6001852B9A3.csv
│   ├── Bat8_3D6001852B9A7.csv
│   └── README.md
├── figures
│   └── README.md
└── outputs
    └── README.md
```

> \[!NOTE\]\
> The folder **data/** is not present in this repository (listed in the `.gitignore`) but we provide the code to locally download raw data.

## Installation

To install this compendium:

-   [Fork](https://docs.github.com/en/get-started/quickstart/contributing-to-projects) this repository using the GitHub interface.
-   Open [RStudio IDE](https://posit.co/products/open-source/rstudio/) and create a **New Project** from **Version Control** to [Clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) your fork.

## Usage

Open this project in RStudio IDE and launch analyses by running:

``` r
source("make.R")
```

-   All packages will be automatically installed and loaded
-   Raw data will be saved in the `data/` directory

## License

This project is released under the [GPL-2](https://choosealicense.com/licenses/gpl-2.0/) license.

## Citation

> Doe J (2024) Download PanTHERIA and WWF WildFinder databases. URL: <https://github.com/rdatatoolbox/practice-1>

## References

Jones KE, Bielby J, Cardillo M *et al.* (2009) PanTHERIA: A species-level database of life history, ecology, and geography of extant and recently extinct mammals. *Ecology*, 90, 2648. DOI: [10.1890/08-1494.1](https://doi.org/10.1890/08-1494.1)

World Wildlife Fund (2006) WildFinder: Online database of species distributions. Version Jan-06. URL: <https://www.worldwildlife.org/pages/wildfinder-database>.