#' Capture output to console
#'
#' Evaluates `code` in a special context in which all output is captured,
#' similar to [capture.output()].
#'
#' Results are printed using the `testthat_print()` generic, which defaults
#' to `print()`, giving you the ability to customise the printing of your
#' object in tests, if needed.
#'
#' @param code Code to evaluate.
#' @param print If `TRUE` and the result of evaluating `code` is
#'   visible, print the result using `testthat_print()`.
#' @param width Number of characters per line of output. This does not
#'   inherit from `getOption("width")` so that tests always use the same
#'   output width, minimising spurious differences.
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

  if (!is.null(width)) {
    local_width(width)
  }
  result <- withr::with_output_sink(temp, withVisible(code))
  if (result$visible && print) {
    withr::with_output_sink(temp, testthat_print(result$value))
  }

  list(
    val = result$value,
    vis = result$visible,
    out = read_lines(temp, encoding = "unknown")
  )
}

#' @export
#' @rdname capture_output
testthat_print <- function(x) {
  UseMethod("testthat_print")
}

#' @export
testthat_print.default <- function(x) {
  print(x)
}
