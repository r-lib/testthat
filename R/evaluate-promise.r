#' Evaluate a promise, capturing all types of output.
#'
#' This uses \code{\link[evaluate]{evaluate}} a promise, returning the
#' result, test, messages and warnings that the code creates in a list.
#' It is used to evaluate code for all test that tests, ensuring that
#' (as much as possible) any spurious output is suppressed during the
#' testing process.
#'
#' @param code Code to evaluate. This should be unevaluated code.
evaluate_promise <- function(code, capture_error = FALSE) {
  warnings <- character()
  wHandler <- function(w) {
    warnings <<- c(warnings, w$message)
    invokeRestart("muffleWarning")
  }

  messages <- character()
  mHandler <- function(m) {
    messages <<- c(messages, m$message)
    invokeRestart("muffleMessage")
  }

  temp <- file()
  on.exit(close(temp))

  result <- with_sink(temp,
    withCallingHandlers(code, warning = wHandler, message = mHandler)
  )

  output <- paste0(readLines(temp, warn = FALSE), collapse = "\n")

  list(
    result = result,
    output = output,
    warnings = warnings,
    messages = messages
  )
}

with_sink <- function(connection, code, ...) {
  sink(connection, ...)
  on.exit(sink())

  code
}
