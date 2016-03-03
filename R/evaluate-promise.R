#' Evaluate a promise, capturing all types of output.
#'
#' This uses \code{\link[evaluate]{evaluate}} a promise, returning the
#' result, test, messages and warnings that the code creates in a list.
#' It is used to evaluate code for all test that tests, ensuring that
#' (as much as possible) any spurious output is suppressed during the
#' testing process.
#'
#' @param code Code to evaluate. This should be an unevaluated expression.
#' @param print If \code{TRUE} and the result of evaluating \code{code} is
#'   visible this will print the result, ensuring that the output of printing
#'   the object is included in the overall output
#' @param capture_messages,capture_warnings Optionally allow messages or
#'   warnings to propagate through.
#' @export
#' @return A list containing
#'  \item{result}{The result of the function}
#'  \item{output}{A string containing all the output from the function}
#'  \item{warnings}{A character vector containing the text from each warning}
#'  \item{messages}{A character vector containing the text from each message}
#' @examples
#' evaluate_promise({
#'   print("1")
#'   message("2")
#'   warning("3")
#'   4
#' })
evaluate_promise <- function(code,
                             print = FALSE,
                             capture_warnings = TRUE,
                             capture_messages = TRUE) {

  warnings <- Stack$new()
  if (capture_warnings) {
    handle_warning <- function(condition) {
      warnings$push(condition)
      invokeRestart("muffleWarning")
    }
  } else {
    handle_warning <- function(condition) {}
  }

  messages <- Stack$new()
  if (capture_messages) {
    handle_message <- function(condition) {
      messages$push(condition)
      invokeRestart("muffleMessage")
    }
  } else {
    handle_message <- function(condition) {}
  }

  temp <- file()
  on.exit(close(temp))

  result <- with_sink(temp,
    withCallingHandlers(
      withVisible(code),
      warning = handle_warning,
      message = handle_message
    )
  )


  if (result$visible && print) {
    with_sink(temp, print(result$value))
  }

  output <- paste0(readLines(temp, warn = FALSE), collapse = "\n")

  list(
    result = result$value,
    output = output,
    warnings = get_messages(warnings$as_list()),
    messages = get_messages(messages$as_list())
  )
}

get_messages <- function(x) {
  vapply(x, "[[", "message", FUN.VALUE = character(1))
}

with_sink <- function(connection, code, ...) {
  sink(connection, ...)
  on.exit(sink())

  code
}
