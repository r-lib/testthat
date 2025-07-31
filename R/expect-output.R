#' Does code print output to the console?
#'
#' Test for output produced by `print()` or `cat()`. This is best used for
#' very simple output; for more complex cases use [expect_snapshot()].
#'
#' @export
#' @family expectations
#' @inheritParams expect_that
#' @param regexp Regular expression to test against.
#'   * A character vector giving a regular expression that must match the output.
#'   * If `NULL`, the default, asserts that there should output,
#'     but doesn't check for a specific value.
#'   * If `NA`, asserts that there should be no output.
#' @inheritDotParams expect_match -object -regexp -info -label
#' @inheritParams capture_output
#' @return The first argument, invisibly.
#' @examples
#' str(mtcars)
#' expect_output(str(mtcars), "32 obs")
#' expect_output(str(mtcars), "11 variables")
#'
#' # You can use the arguments of grepl to control the matching
#' expect_output(str(mtcars), "11 VARIABLES", ignore.case = TRUE)
#' expect_output(str(mtcars), "$ mpg", fixed = TRUE)
expect_output <- function(
  object,
  regexp = NULL,
  ...,
  info = NULL,
  label = NULL,
  width = 80
) {
  act <- quasi_capture(enquo(object), label, capture_output, width = width)

  if (identical(regexp, NA)) {
    if (!identical(act$cap, "")) {
      msg <- sprintf("%s produced output.\n%s", act$lab, encodeString(act$cap))
      return(fail(msg, info = info))
    }
    pass(act$val)
  } else if (is.null(regexp) || identical(act$cap, "")) {
    if (identical(act$cap, "")) {
      msg <- sprintf("%s produced no output", act$lab)
      return(fail(msg, info = info))
    }
    pass(act$val)
  } else {
    act <- labelled_value(act$cap, act$lab)
    expect_match_(act, enc2native(regexp), ...)
  }
}
