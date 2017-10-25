#' Expectation: is returned value less or greater than specified value?
#'
#' @inheritParams expect_that
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

  stopifnot(is.numeric(act$val), length(act$val) == 1)
  stopifnot(is.numeric(exp$val), length(exp$val) == 1)

  msg <- c(
    "<" =  "not strictly less than",
    "<=" = "not less than",
    ">"  = "not strictly more than",
    ">=" = "not more than"
  )[[operator]]

  diff <- act$val - exp$val
  expect(
    op(diff, 0),
    sprintf("%s is %s %s. Difference: %.3g", act$lab, msg, exp$lab, diff)
  )
  invisible(act$val)
}
#' @export
#' @rdname comparison-expectations
expect_lt <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  expect_compare("<", act, exp)
}

#' @export
#' @rdname comparison-expectations
expect_lte <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  expect_compare("<=", act, exp)
}

#' @export
#' @rdname comparison-expectations
expect_gt <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  expect_compare(">", act, exp)
}

#' @export
#' @rdname comparison-expectations
expect_gte <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  expect_compare(">=", act, exp)
}


# Wordy names -------------------------------------------------------------

#' @export
#' @rdname comparison-expectations
#' @usage NULL
expect_less_than <- function(...) {
  warning("Deprecated: please use `expect_lt()` instead", call. = FALSE)
  expect_lt(...)
}

#' @export
#' @rdname comparison-expectations
#' @usage NULL
expect_more_than <- function(...) {
  warning("Deprecated: please use `expect_gt()` instead", call. = FALSE)
  expect_gt(...)
}
