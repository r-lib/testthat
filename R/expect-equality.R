#' Do you expect this value?
#'
#' @description
#' These functions provide two levels of strictness when comparing a
#' computation to a reference value. `expect_identical()` is the baseline;
#' `expect_equal()` relaxes the test to ignore small numeric differences.
#'
#' In the 2nd edition, `expect_identical()` uses [identical()] and
#' `expect_equal` uses [all.equal()]. In the 3rd edition, both functions use
#' [waldo](https://github.com/r-lib/waldo). They differ only in that
#' `expect_equal()` sets `tolerance = testthat_tolerance()` so that small
#' floating point differences are ignored; this also implies that (e.g.) `1`
#' and `1L` are treated as equal.
#'
#' @param object,expected Computation and value to compare it to.
#'
#'   Both arguments supports limited unquoting to make it easier to generate
#'   readable failures within a function or for loop. See [quasi_label] for
#'   more details.
#' @param ...
#'   **3e**: passed on to [waldo::compare()]. See its docs to see other
#'   ways to control comparison.
#'
#'   **2e**: passed on to [testthat::compare()]/[identical()].
#' @param tolerance
#'   **3e**: passed on to [waldo::compare()]. If non-`NULL`, will
#'   ignore small floating point differences. It uses same algorithm as
#'   [all.equal()] so the tolerance is usually relative (i.e.
#'   `mean(abs(x - y) / mean(abs(y)) < tolerance`), except when the differences
#'   are very small, when it becomes absolute (i.e. `mean(abs(x - y) < tolerance`).
#'   See waldo documentation for more details.
#'
#'   **2e**: passed on to [testthat::compare()], if set. It's hard to
#'   reason about exactly what tolerance means because depending on the precise
#'   code path it could be either an absolute or relative tolerance.
#' @param label,expected.label Used to customise failure messages. For expert
#'   use only.
#' @seealso
#' * [expect_setequal()]/[expect_mapequal()] to test for set equality.
#' * [expect_reference()] to test if two names point to same memory address.
#' @inheritParams expect_that
#' @family expectations
#' @examples
#' a <- 10
#' expect_equal(a, 10)
#'
#' # Use expect_equal() when testing for numeric equality
#' \dontrun{
#' expect_identical(sqrt(2) ^ 2, 2)
#' }
#' expect_equal(sqrt(2) ^ 2, 2)
#' @name equality-expectations
NULL

#' @export
#' @rdname equality-expectations
expect_equal <- function(
  object,
  expected,
  ...,
  tolerance = if (edition_get() >= 3) testthat_tolerance(),
  info = NULL,
  label = NULL,
  expected.label = NULL
) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)
  check_number_decimal(tolerance, min = 0, allow_null = TRUE)

  if (edition_get() >= 3) {
    msg <- "Expected %s to equal %s."
    expect_waldo_equal_(msg, act, exp, info, ..., tolerance = tolerance)
  } else {
    if (!is.null(tolerance)) {
      comp <- compare(act$val, exp$val, ..., tolerance = tolerance)
    } else {
      comp <- compare(act$val, exp$val, ...)
    }

    if (comp$equal) {
      pass()
    } else {
      msg <- c(
        sprintf("Expected %s to equal %s.", act$lab, exp$lab),
        "Differences:",
        comp$message
      )
      fail(msg, info = info)
    }
  }
  invisible(act$val)
}


#' @export
#' @rdname equality-expectations
expect_identical <- function(
  object,
  expected,
  info = NULL,
  label = NULL,
  expected.label = NULL,
  ...
) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  if (edition_get() >= 3) {
    msg <- "Expected %s to be identical to %s."
    expect_waldo_equal_(msg, act, exp, info, ...)
  } else {
    if (identical(act$val, exp$val, ...)) {
      pass()
    } else {
      compare <- compare(act$val, exp$val)
      if (compare$equal) {
        msg_act <- "Objects equal but not identical"
      } else {
        msg_act <- compare$message
      }

      msg <- c(
        sprintf("Expected %s to be identical to %s.", act$lab, exp$lab),
        "Differences:",
        msg_act
      )
      fail(msg, info = info)
    }
  }
  invisible(act$val)
}

expect_waldo_equal_ <- function(
  msg,
  act,
  exp,
  info = NULL,
  ...,
  trace_env = caller_env()
) {
  comp <- waldo_compare(
    act$val,
    exp$val,
    ...,
    x_arg = "actual",
    y_arg = "expected"
  )
  if (length(comp) == 0) {
    pass()
  } else {
    msg <- c(
      sprintf(msg, act$lab, exp$lab),
      "Differences:",
      paste0(comp, collpase = "\n")
    )
    fail(msg, info = info, trace_env = trace_env)
  }
}

#' Is an object equal to the expected value, ignoring attributes?
#'
#' Compares `object` and `expected` using [all.equal()] and
#' `check.attributes = FALSE`.
#'
#' @section 3rd edition:
#' `r lifecycle::badge("deprecated")`
#'
#' `expect_equivalent()` is deprecated in the 3rd edition. Instead use
#' `expect_equal(ignore_attr = TRUE)`.
#'
#' @inheritParams expect_equal
#' @param ... Passed on to [compare()].
#' @keywords internal
#' @export
#' @examples
#' #' # expect_equivalent() ignores attributes
#' a <- b <- 1:3
#' names(b) <- letters[1:3]
#' \dontrun{
#' expect_equal(a, b)
#' }
#' expect_equivalent(a, b)
expect_equivalent <- function(
  object,
  expected,
  ...,
  info = NULL,
  label = NULL,
  expected.label = NULL
) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  edition_deprecate(
    3,
    "expect_equivalent()",
    "Use expect_equal(ignore_attr = TRUE)"
  )

  comp <- compare(act$val, exp$val, ..., check.attributes = FALSE)
  if (!comp$equal) {
    msg <- sprintf(
      "Expected %s to be equivalent to %s.\n%s",
      act$lab,
      exp$lab,
      comp$message
    )
    fail(msg, info = info)
  } else {
    pass()
  }
  invisible(act$val)
}
