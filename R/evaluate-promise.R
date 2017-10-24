#' Evaluate a promise, capturing all types of output.
#'
#' @param code Code to evaluate.
#' @keywords internal
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

  result <- withr::with_output_sink(
    temp,
    withCallingHandlers(
      withVisible(code),
      warning = handle_warning,
      message = handle_message
    )
  )

  if (result$visible && print) {
    withr::with_output_sink(temp, print(result$value))
  }

  output <- paste0(read_lines(temp), collapse = "\n")

  list(
    result = result$value,
    output = output,
    warnings = get_messages(warnings$as_list()),
    messages = get_messages(messages$as_list())
  )
}
