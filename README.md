
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->
<!-- badges: end -->

The goal of libminer is to provide an overview of your R library setup.
It is a toy package created as part of a workshop and not meant for
serious use!

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("tbaird80/libminer")
```

## Example

To get a count of installed packages in each of your libraries,
optionally with the total sizes, use `lib_summary()`

``` r
library(libminer)
#specify sizes = TRUE
lib_summary(sizes = TRUE)
#>                                                                 Library
#> 1                                    C:/Program Files/R/R-4.3.1/library
#> 2                        C:/Users/thoma/AppData/Local/R/win-library/4.3
#> 3 C:/Users/thoma/AppData/Local/Temp/Rtmp6Nv9be/temp_libpath21a83b971798
#>   n_packages  lib_size
#> 1         30  68858812
#> 2         97 163362742
#> 3          1     13253
```
