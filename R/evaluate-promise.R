#' Evaluate a promise, capturing all types of output.
#'
#' These functions allow you to capture the side-effects of a function call
#' including printed output, messages and warnings. They are used to evaluate
#' code for \code{\link{expect_output}}, \code{\link{expect_message}},
#' \code{\link{expect_warning}}, and \code{\link{expect_silent}}.
#'
#' @param code Code to evaluate. This should be an unevaluated expression.
#' @param print If \code{TRUE} and the result of evaluating \code{code} is
#'   visible this will print the result, ensuring that the output of printing
#'   the object is included in the overall output
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
evaluate_promise <- function(code, print = FALSE) {

  warnings <- Stack$new()
  handle_warning <- function(condition) {
    warnings$push(condition)
    invokeRestart("muffleWarning")
  }

  messages <- Stack$new()
  handle_message <- function(condition) {
    messages$push(condition)
    invokeRestart("muffleMessage")
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

#' @export
#' @rdname evaluate_promise
capture_messages <- function(code) {
  out <- Stack$new()

  withCallingHandlers(
    code,
    message = function(condition) {
      out$push(condition)
      invokeRestart("muffleMessage")
    }
  )

  get_messages(out$as_list())
}

#' @export
#' @rdname evaluate_promise
capture_warnings <- function(code) {
  out <- Stack$new()

  withCallingHandlers(
    code,
    warning = function(condition) {
      out$push(condition)
      invokeRestart("muffleWarning")
    }
  )

  get_messages(out$as_list())
}

get_messages <- function(x) {
  vapply(x, "[[", "message", FUN.VALUE = character(1))
}

#' @export
#' @rdname evaluate_promise
capture_output <- function(code, print = FALSE) {
  output <- capture_output_as_vector(code, print)
  paste0(output, collapse = "\n")
}

capture_output_as_vector <- function(code, print) {
  temp <- file()
  on.exit(close(temp), add = TRUE)

  result <- with_sink(temp, withVisible(code))
  if (result$visible && print) {
    with_sink(temp, print(result$value))
  }

  readLines(temp, warn = FALSE)
}

with_sink <- function(connection, code, ...) {
  sink(connection, ...)
  on.exit(sink())

  code
}

