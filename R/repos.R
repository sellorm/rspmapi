#' Fetches lists of repositories
#'
#' @param instance An rspm_instance object created with `instance()`
#' @param params A list of optional parameters applied to the API query
#'
#' @export
repos <- function(instance, params = list()){
  return_endpoint(instance, "/__api__/repos", params = params)
}


#' Fetches the date of the earliest calendar transaction for a repo
#'
#' @param instance An rspm_instance object created with `instance()`.
#' @param id An RSPM repository ID
#'
#' @export
repos_first_transaction <- function(instance, id){
  api_url <- paste0(
    "/__api__/repos/",
    id,
    "/first-transaction"
  )
  return_endpoint(instance, api_url)
}

#' Fetches lists of packages for a specific repository with optional filters
#'
#' Fetches a single package for a specific repository with optional parameters
#'
#' @param instance An rspm_instance object created with `instance()`
#' @param id An RSPM repository ID
#' @param name A package name
#' @param params A list of optional parameters applied to the API query
#'
#' @export
repos_packages <- function(instance, id, name = NULL, params = list()){
  api_url <- paste0(
    "/__api__/repos/",
    id,
    "/packages/",
    name
  )
  return_endpoint(instance, api_url, params = params)
}



#' Fetches lists of system requirements for a specific repository and package
#'
#' @param instance An rspm_instance object created with `instance()`
#' @param id An RSPM repository ID
#' @param name A package name
#' @param params A list of optional parameters applied to the API query
#'
#' @export
repos_packages_sysreqs <- function(instance, id, name, params = list()){
  api_url <- paste0(
    "/__api__/repos/",
    id,
    "/packages",
    name,
    "/sysreqs"
  )
  return_endpoint(instance, api_url, params = params)
}


#' Fetches lists of source records for a specific repository
#'
#' @param instance An rspm_instance object created with `instance()`
#' @param id An RSPM repository ID
#' @param params A list of optional parameters applied to the API query
#'
#' @export
repos_sources <- function(instance, id, params = list()){
  api_url <- paste0(
    "/__api__/repos/",
    id,
    "/sources"
  )
  return_endpoint(instance, api_url, params = params)
}


#' Fetches list of system requirements for a specific repository
#'
#' @param instance An rspm_instance object created with `instance()`
#' @param id An RSPM repository ID
#' @param params A list of optional parameters applied to the API query
#'
#' @export
repos_sysreqs <- function(instance, id, params = list()){
  api_url <- paste0(
    "/__api__/repos/",
    id,
    "/sysreqs"
  )
  return_endpoint(instance, api_url, params = params)
}

