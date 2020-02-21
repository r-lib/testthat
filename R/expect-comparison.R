#' Expectation: is returned value less or greater than specified value?
#'
#' @inheritParams expect_equal
#' @param expected Single numeric value to compare.
#' @family expectations
#' @examples
#' a <- 9
#' expect_lt(a, 10)
#'
#' \dontrun{
#' expect_lt(11, 10)
#' }
#'
#' a <- 11
#' expect_gt(a, 10)
#' \dontrun{
#' expect_gt(9, 10)
#' }
#' @name comparison-expectations
NULL

expect_compare <- function(operator = c("<", "<=", ">", ">="), act, exp) {
  operator <- match.arg(operator)
  op <- match.fun(operator)

  msg <- c(
    "<" =  "not strictly less than",
    "<=" = "not less than",
    ">"  = "not strictly more than",
    ">=" = "not more than"
  )[[operator]]

  cmp <- op(act$val, exp$val)
  if (length(cmp) != 1 || !is.logical(cmp)) {
    abort("Result of comparison must be a single logical value")
  }
  expect(
    if (!is.na(cmp)) cmp else FALSE,
    sprintf("%s is %s %s. Difference: %.3g", act$lab, msg, exp$lab, act$val - exp$val)
  )
  invisible(act$val)
}
#' @export
#' @rdname comparison-expectations
expect_lt <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect_compare("<", act, exp)
}

#' @export
#' @rdname comparison-expectations
expect_lte <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect_compare("<=", act, exp)
}

#' @export
#' @rdname comparison-expectations
expect_gt <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect_compare(">", act, exp)
}

#' @export
#' @rdname comparison-expectations
expect_gte <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect_compare(">=", act, exp)
}


# Wordy names -------------------------------------------------------------

#' Deprecated numeric comparison functions
#'
#' These functions have been deprecated in favour of the more concise
#' [expect_gt()] and [expect_lt()].
#'
#' @export
#' @param ... All arguments passed on to `expect_lt()`/`expect_gt()`.
#' @keywords internal
expect_less_than <- function(...) {
  warning("Deprecated: please use `expect_lt()` instead", call. = FALSE)
  expect_lt(...)
}

#' @rdname expect_less_than
#' @export
expect_more_than <- function(...) {
  warning("Deprecated: please use `expect_gt()` instead", call. = FALSE)
  expect_gt(...)
}
