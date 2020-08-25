#' Test reporter: minimal.
#'
#' The minimal test reporter provides the absolutely minimum amount of
#' information: whether each expectation has succeeded, failed or experienced
#' an error.  If you want to find out what the failures and errors actually
#' were, you'll need to run a more informative test reporter.
#'
#' @export
#' @family reporters
MinimalReporter <- R6::R6Class("MinimalReporter",
  inherit = Reporter,
  public = list(
    initialize = function(...) {
      super$initialize(...)
      self$capabilities$parallel_support <- TRUE
    },

    add_result = function(context, test, result) {
      self$cat_tight(single_letter_summary(result))
    },

    end_reporter = function() {
      self$cat_line()
    }
  )
)
