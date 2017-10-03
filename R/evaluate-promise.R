#' Evaluate a promise, capturing all types of output.
#'
#' These functions allow you to capture the side-effects of a function call
#' including printed output, messages and warnings. They are used to evaluate
#' code for [expect_output()], [expect_message()],
#' [expect_warning()], and [expect_silent()].
#'
#' @param code Code to evaluate. This should be an unevaluated expression.
#' @param print If `TRUE` and the result of evaluating `code` is
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

  output <- paste0(read_lines(temp), collapse = "\n")

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
#' @param width Number of characters per line of output
capture_output <- function(code, print = FALSE, width = 80) {
  output <- capture_output_lines(code, print, width = width)
  paste0(output, collapse = "\n")
}

#' @export
#' @rdname evaluate_promise
capture_output_lines <- function(code, print = FALSE, width = 80) {
  temp <- file()
  on.exit(close(temp), add = TRUE)

  old <- options(width = width)
  on.exit(options(old), add = TRUE)

  old_width <- Sys.getenv("RSTUDIO_CONSOLE_WIDTH")
  Sys.setenv("RSTUDIO_CONSOLE_WIDTH" = width)
  on.exit(Sys.setenv("RSTUDIO_CONSOLE_WIDTH" = old_width), add = TRUE)

  result <- with_sink(temp, withVisible(code))
  if (result$visible && print) {
    with_sink(temp, print(result$value))
  }

  read_lines(temp)
}

with_sink <- function(connection, code, ...) {
  sink(connection, ...)
  on.exit(sink())

  code
}

