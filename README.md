
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rspmapi

<!-- badges: start -->
<!-- badges: end -->

The `rspmapi` package implements an R wrapper around the RStudio Package
Manager API.

## Installation

You can install the development version of `rspmapi` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("sellorm/rspmapi")
```

## Example

In order to use any of the supplied functions, you must first connect to
your Package Manager instance:

``` r
library(rspmapi)
rspm <- instance("https://packagemanager.rstudio.com")
#> Connected to RStudio Package Manager instance:
#>     https://packagemanager.rstudio.com
```

Once you have an RSPM instance object, you can use it to perform API
operations.

Each API endpoint has a corresponding function in `rspmapi`.

``` r
result <- rspm %>% 
  status()
result$version
#> [1] "2021.12.0-3"
```

Some of the functions take additional arguments:

``` r
result <- rspm %>% 
  repos_sources(id = 1)
result[[1]]$created
#> [1] "2020-04-23T12:04:31.778784Z"
```

Some functions can optionally take additional query string parameters.
These are documented in the [RSPM API
docs](https://packagemanager.rstudio.com/__api__/swagger/index.html) for
each API call.

``` r
params <- list(`_limit` = 5, `_page` = 2, name_like = "shiny")
result <- rspm %>% 
  sources_packages(id = 1, params = params)
unlist(lapply(result, function(x){x$name}))
#> [1] "BLRShiny2"  "CLUSTShiny" "CMShiny"    "CTAShiny"   "CTShiny"
```
