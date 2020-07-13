#' Test reporter: location
#'
#' This reporter simply prints the location of every expectation and error.
#' This is useful if you're trying to figure out the source of a segfault,
#' or you want to figure out which code triggers a C/C++ breakpoint
#'
#' @export
#' @family reporters
LocationReporter <- R6::R6Class("LocationReporter",
  inherit = Reporter,
  public = list(
    start_test = function(context, test) {
      self$cat_line("Start test: ", test)
    },

    add_result = function(context, test, result) {
      status <- expectation_type(result)
      self$cat_line("  ", expectation_location(result), " [", status, "]")
    },

    end_test = function(context, test) {
      self$cat_line("End test: ", test)
      self$cat_line()
    }
  )
)
