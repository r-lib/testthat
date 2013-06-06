#' Stub object for managing a reporter of tests.
#'
#' Do not clone directly from this object - children should implement all
#' methods.
#'
#' @keywords internal.
#' @aliases Reporter-class
#' @exportClass Reporter
Reporter <- setRefClass("Reporter",
  fields = list(
    context = "character",
    test = "ANY",
    failed = "logical",
    context_open = "logical",
    context_provided = "logical"
  ), methods = list(
    initialize = function(provided=FALSE,...) {
      context_open <<- FALSE
      failed <<- FALSE
      test <<- NULL
      context_provided <<- provided

      initFields(...)
    },
    start_reporter = function() {
      failed <<- FALSE
    },
    start_context = function(desc, provided=FALSE) {
      context <<- desc
      context_provided <<- provided
    },
    start_test = function(desc) {
      test <<- desc
    },
    add_result = function(result) {},
    end_test = function() {
      test <<- ""
    },
    end_context = function() {},
    end_reporter = function() {}
  )
)
