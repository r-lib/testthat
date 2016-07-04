# Copied from utils::recover()
recover2 <- function(start_frame = 1L, end_frame = sys.nframe())
{
  calls <- sys.calls()

  if (.isMethodsDispatchOn()) {
    tState <- tracingState(FALSE)
    on.exit(tracingState(tState))
  }
  from <- min(end_frame, length(calls))

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
