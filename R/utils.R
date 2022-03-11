#' The generic endpoint access function
#'
#' builds appropriate query strings and performs requests against the supplied
#' RSPM instance
#'
#' @param instance An RSPM instance object created with `instance()`
#' @param endpoint The API endpoint to query
#' @param params Optional list of query parameters
#'
return_endpoint <- function(instance, endpoint, params = list()){
  api_url <- paste0(instance$url, endpoint)

  request_obj <- httr2::request(api_url)

  params$req <- request_obj

  request_obj <- do.call(httr2::req_url_query, params)

  response <- httr2::req_perform(request_obj)

  httr2::resp_body_json(response)
}


#' Connect to an RStudio Package Manager instance
#'
#' @param url string The URL of the Package Manager instance
#' @param silent boolean Silences the connection status message
#'
#' @export
instance <- function(url, silent = FALSE){
  rspm <- list(url = url)
  instance_data <- list(
    url = url,
    version = status(rspm)$version
  )
  connected_msg <- paste0("Connected to RStudio Package Manager instance:",
                          "\n    ",
                          url)
  if (isFALSE(silent)) {
    message(connected_msg)
  }
  class(instance_data) <- c("rspm_instance", class(instance_data))
  instance_data
}

#' @export
print.rspm_instance <- function(x, ...) {
  print.default(paste0(
    "Package Manager instance ",
    instance$url,
    " (version ",
    instance$version,
    ")"
  ))
}
