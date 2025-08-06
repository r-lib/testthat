#' Does code return a number greater/less than the expected value?
#'
#' @inheritParams expect_equal
#' @param object,expected A value to compare and its expected bound.
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

expect_compare_ <- function(
  operator = c("<", "<=", ">", ">="),
  act,
  exp,
  trace_env = caller_env()
) {
  operator <- match.arg(operator)
  op <- match.fun(operator)

  msg <- c(
    "<" = "not strictly less than",
    "<=" = "not less than",
    ">" = "not strictly greater than",
    ">=" = "not greater than"
  )[[operator]]

  negated_op <- switch(operator, "<" = ">=", "<=" = ">", ">" = "<=", ">=" = "<")

  cmp <- op(act$val, exp$val)
  if (length(cmp) != 1 || !is.logical(cmp)) {
    abort(
      "Result of comparison must be a single logical value",
      call = trace_env
    )
  }
  if (!isTRUE(cmp)) {
    digits <- max(
      digits(act$val),
      digits(exp$val),
      min_digits(act$val, exp$val)
    )
    msg <- sprintf(
      "%s is %s %s.\n%s - %s = %s %s 0",
      act$lab,
      msg,
      exp$lab,
      num_exact(act$val, digits),
      num_exact(exp$val, digits),
      num_exact(act$val - exp$val, digits),
      negated_op
    )
    return(fail(msg, trace_env = trace_env))
  }
  pass(act$val)
}
#' @export
#' @rdname comparison-expectations
expect_lt <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  expect_compare_("<", act, exp)
}

#' @export
#' @rdname comparison-expectations
expect_lte <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  expect_compare_("<=", act, exp)
}

#' @export
#' @rdname comparison-expectations
expect_gt <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  expect_compare_(">", act, exp)
}

#' @export
#' @rdname comparison-expectations
expect_gte <- function(object, expected, label = NULL, expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  expect_compare_(">=", act, exp)
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


# Helpers -----------------------------------------------------------------

num_exact <- function(x, digits = 6) {
  sprintf(paste0("%0.", digits, "f"), x)
}

min_digits <- function(x, y, tolerance = testthat_tolerance()) {
  if (is.integer(x) && is.integer(y)) {
    return(0L)
  }

  attributes(x) <- NULL
  attributes(y) <- NULL

  n <- digits(abs(x - y))
  if (!is.null(tolerance)) {
    n <- min(n, digits(tolerance))
  }

  as.integer(n) + 1L
}

digits <- function(x) {
  x <- x[!is.na(x) & x != 0]
  if (length(x) == 0) {
    return(0)
  }
  scale <- -log10(min(x))
  if (scale <= 0) {
    0L
  } else {
    ceiling(round(scale, digits = 2))
  }
}
