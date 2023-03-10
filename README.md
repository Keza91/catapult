# catapultR

The goal of catapultR is to facilitate interface with OpenField Cloud APIs, including access to 10 Hz data, IMA events and generation 2 velocity and acceleration efforts for a given activity or a period. catapultR also facilitates some data manipulations, like reading 100 Hz CSV generated by Munger, Geodetic Coordinates Conversion to ENU (East, North, Up) with GPS or LPS positional data etc.

## Installation

If running Windows, please make sure the R installation directory (as reported by _R.home()_) does not contain spaces. Otherwise catapultR installation might fail.

In Windows, install catapultR from a Bitbucket _binary_ package with

``` r
imports <- c('dplyr', 'httr', 'jsonlite', 'xml2', 'purrr', 'readr', 'signal', 'stringr', 'tibble', 'tidyr', 'magrittr', 'R6', 'crul') 
install.packages(imports[!(imports %in% installed.packages()[,"Package"])], dependencies = TRUE)
utils::install.packages("https://bitbucket.org/catapultsports/catapultr/raw/master/catapultR.zip")
```

On other platforms, install catapultR from Bitbucket _source_ package with

``` r
if (!require("devtools")) install.packages("devtools")
devtools::install_bitbucket("catapultsports/catapultr", dependencies=TRUE, build_vignettes=TRUE)
```

The package is distributed under MIT license.

## The package web site

http://catapultr.catapultsports.com is the catapultR package home.

## Vignettes and help 

Run the following to access catapultR vignettes, help and version:

``` r
browseVignettes("catapultR")
help(package="catapultR")
packageVersion("catapultR")
```

## The package build script
``` r
remove.packages("catapultR")
setwd("D:/DepoBitbucket/catapultR") 
usethis::use_package_doc(); devtools::document()
usethis::use_mit_license(name="Catapult Sports Pty Ltd")
devtools::build_vignettes()
devtools::build()			# build source package
devtools::build("D:/DepoBitbucket/catapultR_0.0.0.33.tar.gz", binary=T) # build a binary package for Windows from the source package
```
