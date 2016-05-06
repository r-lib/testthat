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

        recover(start_frame = result$start_frame,
                end_frame = result$end_frame)
      }
    }
  )
)

# Copied from utils::recover()
recover <- function(start_frame = 1L, end_frame = sys.nframe())
{
  calls <- sys.calls()

  if (.isMethodsDispatchOn()) {
    tState <- tracingState(FALSE)
    on.exit(tracingState(tState))
  }
  from <- end_frame

  calls <- limitedLabels(calls[start_frame:from])
  repeat {
    which <- menu(calls, title = "\nEnter a frame number, or 0 to exit  ")
    if (which) {
      frame <- sys.frame(start_frame - 2 + which)
      browse_frame(frame, skip = 7 - which)
    }
    else break
  }
}

browse_frame <- function(frame, skip) {
  eval(substitute(browser(skipCalls = skip), list(skip = skip)),
       envir = frame)
}
