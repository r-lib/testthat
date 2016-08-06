#' @include reporter.R
NULL

#' Test reporter: start recovery.
#'
#' This reporter will call a modified version of \code{\link{recover}} on all
#' broken expectations.
#'
#' @export
DebugReporter <- R6::R6Class("DebugReporter", inherit = Reporter,
  public = list(
    add_result = function(context, test, result) {
      if (!expectation_success(result)) {
        if (sink.number() > 0) {
          sink(self$out)
          on.exit(sink(), add = TRUE)
        }

        recover2(start_frame = result$start_frame,
                 end_frame = result$end_frame)
      }
    }
  )
)
