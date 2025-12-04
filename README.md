# Presentation

[![License: GPL-2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)

The package gpsdata4lazyscientists aims to provide a tool for lazy scientists who don't want to spend hours downloading, cleaning and formatting their GPS datasets.

# Content

It is structured as follow:

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