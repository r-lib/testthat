#' Test reporter: gather all errors silently.
#'
#' This reporter quietly runs all tests, simply gathering all expectations.
#' This is helpful for programmatically inspecting errors after a test run.
#' You can retrieve the results with the `expectations()`
#' method.
#'
#' @export
#' @family reporters
SilentReporter <- R6::R6Class("SilentReporter",
  inherit = Reporter,
  public = list(
    .expectations = NULL,

    initialize = function(...) {
      super$initialize(...)
      self$.expectations <- Stack$new()
    },

    add_result = function(context, test, result) {
      self$.expectations$push(result)
    },

    expectations = function() {
      self$.expectations$as_list()
    }
  )
)
