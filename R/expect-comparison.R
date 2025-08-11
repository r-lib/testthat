#' Do you expect a number bigger or smaller than this?
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

  actual_op <- switch(operator, "<" = ">=", "<=" = ">", ">" = "<=", ">=" = "<")

  cmp <- op(act$val, exp$val)
  if (length(cmp) != 1 || !is.logical(cmp)) {
    cli::cli_abort(
      "Result of comparison must be a single logical value.",
      call = trace_env
    )
  }
  if (!isTRUE(cmp)) {
    diff <- act$val - exp$val
    msg_exp <- sprintf("Expected %s %s %s.", act$lab, operator, exp$lab)

    digits <- max(
      digits(act$val),
      digits(exp$val),
      min_digits(act$val, exp$val)
    )

    msg_act <- sprintf(
      "Actual comparison: %s %s %s",
      num_exact(act$val, digits),
      actual_op,
      num_exact(exp$val, digits)
    )

    if (is.nan(diff)) {
      msg_diff <- "Difference: incomparable."
    } else if (is.na(diff)) {
      msg_diff <- "Difference: NA."
    } else {
      msg_diff <- sprintf(
        "Difference: %s %s 0",
        num_exact(diff, digits),
        actual_op
      )
    }
    return(fail(c(msg_exp, msg_act, msg_diff), trace_env = trace_env))
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
  cli::cli_warn("Deprecated: please use {.fn expect_lt} instead.")
  expect_lt(...)
}

#' @rdname expect_less_than
#' @export
expect_more_than <- function(...) {
  cli::cli_warn("Deprecated: please use {.fn expect_gt} instead.")
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
