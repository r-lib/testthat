#' @include reporter.R
NULL

#' Multi reporter: combine several reporters in one.
#'
#' This reporter is useful to use several reporters at the same time, e.g.
#' adding a custom reporter without removing the current one.
#'
#' @export
MultiReporter <- R6::R6Class("MultiReporter", inherit = Reporter,
  public = list(
    reporters = list(),

    initialize = function(reporters = list()) {
      super$initialize()
      self$reporters <- reporters
    },

    start_reporter = function() {
      o_apply(self$reporters, "start_reporter")
    },
    start_context = function(context) {
      o_apply(self$reporters, "start_context", context)
    },
    start_test = function(context, test) {
      o_apply(self$reporters, "start_test", context, test)
    },
    add_result = function(context, test, result) {
      o_apply(self$reporters, "add_result", context = context, test = test, result = result)
    },
    end_test = function(context, test) {
      o_apply(self$reporters, "end_test", context, test)
    },
    end_context = function(context) {
      o_apply(self$reporters, "end_context", context)
    },
    end_reporter = function() {
      o_apply(self$reporters, "end_reporter")
    }
  )
)

o_apply <- function(objects, method, ...) {
  lapply(objects, function(x) x[[method]](...))
}

