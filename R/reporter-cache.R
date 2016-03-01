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
    initialize = function(reporter = get_reporter()) {
      private$.args <- Stack$new()
      private$.reporter <- reporter
    },

    add_result = function(context, test, result) {
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
    .reporter = NULL
  )
)
