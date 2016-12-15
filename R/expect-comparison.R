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

expect_compare <- function(operator = c("<", "<=", ">", ">="),
                           actual, expected,
                           label, expected.label) {
  operator <- match.arg(operator)
  op <- match.fun(operator)

  stopifnot(is.numeric(actual), length(actual) == 1)
  stopifnot(is.numeric(expected), length(expected) == 1)

  msg <- c(
    "<" =  "not strictly less than",
    "<=" = "not less than",
    ">"  = "not strictly more than",
    ">=" = "not more than"
  )[[operator]]

  diff <- actual - expected
  expect(
    op(diff, 0),
    sprintf("%s is %s %s. Difference: %.3g", label, msg, expected.label, diff)
  )
  invisible(actual)
}
#' @export
#' @rdname comparison-expectations
expect_lt <- function(object, expected, label = NULL, expected.label = NULL) {
  lab_act <- make_label(substitute(object), label)
  lab_exp <- make_label(substitute(expected), expected.label)
  expect_compare("<", object, expected, label = lab_act, expected.label = lab_exp)
}

#' @export
#' @rdname comparison-expectations
expect_lte <- function(object, expected, label = NULL, expected.label = NULL) {
  lab_act <- make_label(substitute(object), label)
  lab_exp <- make_label(substitute(expected), expected.label)
  expect_compare("<=", object, expected, label = lab_act, expected.label = lab_exp)
}

#' @export
#' @rdname comparison-expectations
expect_gt <- function(object, expected, label = NULL, expected.label = NULL) {
  lab_act <- make_label(substitute(object), label)
  lab_exp <- make_label(substitute(expected), expected.label)
  expect_compare(">", object, expected, label = lab_act, expected.label = lab_exp)
}

#' @export
#' @rdname comparison-expectations
expect_gte <- function(object, expected, label = NULL, expected.label = NULL) {
  lab_act <- make_label(substitute(object), label)
  lab_exp <- make_label(substitute(expected), expected.label)
  expect_compare(">=", object, expected, label = lab_act, expected.label = lab_exp)
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
