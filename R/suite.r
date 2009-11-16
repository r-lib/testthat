#' Stub object for managing a suite of tests.
#'
#' Do not clone directly from this object - children should implement all
#' methods.
#'
#' @keywords internal.
#' @alias Suite
Suite$do({
  self$context <- ""
  self$test <- ""
    
  self$start_suite <- function() {}
  self$start_context <- function(desc) {
    self$context <- desc
  }
  self$start_test <- function(desc) {
    self$test <- desc
  }
  self$add_result <- function(result) {}
  self$end_test <- function() {}
  self$end_context <- function() {}
  self$end_suite <- function() {}
})

