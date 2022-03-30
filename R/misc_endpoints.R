#' Fetches a list of alerts
#'
#' Fetches a list of alerts for events such as excessive file usage
#'
#' @param instance An rspm_instance object created with `instance()`.
#'
#' @export
alerts <- function(instance){
  return_endpoint(instance, "/__api__/alerts")
}


#' Fetches the status of the RStudio Package Manager server
#'
#' @param instance An rspm_instance object created with `instance()`.
#'
#' @export
status <- function(instance){
  return_endpoint(instance, "/__api__/status")
}


## ------------------


#' Fetches usage data from the metrics API
#'
#' This API takes two possible parameters resulting in a URL of the form:
#' `/__api__/metrics/packages?_sourceType=r&_days=7`
#'
#' @param instance An rspm_instance object created with `instance()`.
#' @param params A list of optional query parametes
#'
metrics_packages <- function(instance, params = list()){
  return_endpoint(instance, "/__api__/metrics/packages", params = params)
}
