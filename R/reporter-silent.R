#' @include reporter.R
NULL

#' Test reporter: gather all errors silently.
#'
#' This reporter quietly runs all tests, simply gathering the results
#' for later use. This is helpful for programmatically inspecting errors
#' after a test run.
#'
#' @export
SilentReporter <- R6::R6Class("SilentReporter", inherit = Reporter,
  public = list(
    results = list(),

    add_result = function(context, test, result) {
      self$results <- c(self$results, list(result))
    }
  )
)
