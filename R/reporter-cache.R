#' @include reporter.R
NULL

#' Cache reporter: Defer reporting to the current reporter until the end
#'
#' Active sinks also affect reporter output.  This reporter collects all
#' expectations, and forwards them to another reporter (default: the reporter
#' that was active when it was created).
#'
#' @keywords internal
CacheReporter <- R6::R6Class(
  "CacheReporter", inherit = Reporter,

  public = list(
    initialize = function(reporter = get_reporter(), select_from_call = -1:-7) {
      private$.args <- Stack$new()
      private$.reporter <- reporter
      private$.select_from_call <- select_from_call
    },

    add_result = function(context, test, result) {
      result$call <- result$call[private$.select_from_call]
      private$.args$push(list(context = context, test = test, result = result))
    },

    end_reporter = function() {
      for (args in private$.args$as_list()) {
        do.call(private$.reporter$add_result, args)
      }
    }
  ),

  private = list(
    .args = NULL,
    .reporter = NULL,
    .select_from_call = NULL
  )
)
