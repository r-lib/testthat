#' Gather all expectations silently
#'
#' This reporter quietly runs all tests, simply gathering all expectations.
#' This is helpful for programmatically inspecting errors after a test run.
#' You can retrieve the results with the `expectations()`
#' method.
#'
#' @export
#' @family reporters
SilentReporter <- R6::R6Class(
  "SilentReporter",
  inherit = Reporter,
  public = list(
    .expectations = NULL,

    initialize = function(...) {
      super$initialize(...)
      self$capabilities$parallel_support <- TRUE
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

# Useful for testing test_that() and friends which otherwise swallow
# all expectations by design
capture_expectations <- function(code) {
  reporter <- SilentReporter$new()
  with_reporter(reporter, code)
  reporter$expectations()
}
