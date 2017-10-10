#' Capture output to console
#'
#' Evaluates `code` in a special context in which all output is captured,
#' similar to [capture.output()].
#'
#' @param code Code to evaluate.
#' @param print If `TRUE` and the result of evaluating `code` is
#'   visible this will print the result, ensuring that the output of printing
#'   the object is included in the overall output
#' @param width Number of characters per line of output
#' @return `capture_output()` returns a single string. `capture_output_lines()`
#'   returns a character vector with one entry for each line
#' @keywords internal
#' @export
#' @examples
#' capture_output({
#'   cat("Hi!\n")
#'   cat("Bye\n")
#' })
#'
#' capture_output_lines({
#'   cat("Hi!\n")
#'   cat("Bye\n")
#' })
#'
#' capture_output("Hi")
#' capture_output("Hi", print = TRUE)
capture_output <- function(code, print = FALSE, width = 80) {
  output <- capture_output_lines(code, print, width = width)
  paste0(output, collapse = "\n")
}

#' @export
#' @rdname capture_output
capture_output_lines <- function(code, print = FALSE, width = 80) {
  eval_with_output(code, print = print, width = width)$out
}

eval_with_output <- function(code, print = FALSE, width = 80) {
  temp <- file()
  on.exit(close(temp), add = TRUE)

  withr::local_options(list(width = width))
  withr::local_envvar(list(RSTUDIO_CONSOLE_WIDTH = width))

  result <- withr::with_output_sink(temp, withVisible(code))
  if (result$visible && print) {
    withr::with_output_sink(temp, print(result$value))
  }

  list(
    val = result$value,
    vis = result$visible,
    out = read_lines(temp)
  )
}
