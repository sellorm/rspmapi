#' Fetches lists of sources available in RSPM
#'
#' @param instance An rspm_instance object created with `instance()`
#'
#' @export
sources <- function(instance){
  return_endpoint(instance, "/__api__/sources")
}



#' Fetches lists of packages for a specific source with optional filters
#'
#' @param instance An rspm_instance object created with `instance()`
#' @param id An RSPM source ID
#' @param params A list of optional parameters applied to the API query
#'
#' @export
sources_packages <- function(instance, id, params = list()){
  api_url <- paste0(
    "/__api__/sources/",
    id,
    "/packages"
  )

  return_endpoint(instance, api_url, params = params)
}



#' Fetches lists of PyPI package releases for a specific package name and source with optional filters
#'
#' @param instance An rspm_instance object created with `instance()`
#' @param id An RSPM source ID
#' @param name A package name
#' @param params A list of optional parameters applied to the API query
#'
#' @export
sources_packages_releases <- function(instance, id, name, params = list()){
  api_url <- paste0(
    "/__api__/sources/",
    id,
    "/packages/",
    name,
    "/releases"
  )

  return_endpoint(instance, api_url, params = params)
}



#' Fetches lists of transactions for a given source
#'
#' @param instance An rspm_instance object created with `instance()`.
#' @param id An RSPM source ID
#' @param params A list of optional parameters applied to the API query
#'
#' @export
sources_transactions <- function(instance, id, params = list()){
  api_url <- paste0(
    "/__api__/sources/",
    id,
    "/transactions"
  )

  return_endpoint(instance, api_url, params = params)
}
