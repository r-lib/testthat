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
  from <- 0L
  frame_range <- seq.int(from = end_frame, to = start_frame, by = -1L)
  for (i in frame_range) {
    calli <- calls[[i]]
    fname <- calli[[1L]]
    if (!is.name(fname) || is.na(match(as.character(fname),
                                       c("recover", "stop", "Stop")))) {
      from <- i
      break
    }
  }
  if (from > 0L) {
    if (!interactive()) {
      try(dump.frames())
      cat(gettext("recover called non-interactively; frames dumped, use debugger() to view\n"))
      return(NULL)
    }
    calls <- limitedLabels(calls[start_frame:from])
    repeat {
      which <- menu(calls, title = "\nEnter a frame number, or 0 to exit  ")
      if (which)
        eval(substitute(browser(skipCalls = skip),
                        list(skip = 7 - which)),
             envir = sys.frame(start_frame - 2 + which))
      else break
    }
  }
  else cat(gettext("No suitable frames for recover()\n"))
}
