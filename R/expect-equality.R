#' Expectation: is the object equal to a value?
#'
#' @description
#' These three function use [waldo](https://github.com/r-lib/waldo) to
#' compare some code to an `expected` result. They differ in the
#' default values passed on to `waldo::compare()`:
#'
#' - `expect_identical()` is the strictest comparison.
#' - `expect_equal()` sets `tolerance = testthat_tolerance()` so that
#'   small floating point values are igored.
#' - `expect_equivalent()` sets `ignore_attr = TRUE` to ignore all differences
#'   in attributes.
#'
#' @param object,expected Computation and value to compare it to.
#'
#'   Both arguments supports limited unquoting to make it easier to generate
#'   readable failures within a function or for loop. See [quasi_label] for
#'   more details.
#' @param label,expected.label Used to customise failure messages. For expert
#'   use only.
#' @param scale Deprecated. Passing `scale` down to `all.equal()` is no
#'   longer supported.
#' @seealso `expect_setequal()` to test for set equality.
#' @inheritParams expect_that
#' @family expectations
#' @examples
#' a <- 10
#' expect_equal(a, 10)
#'
#' # Use expect_equal() when testing for numeric equality
#' sqrt(2) ^ 2 - 1
#' expect_equal(sqrt(2) ^ 2, 2)
#' # Neither of these forms take floating point representation errors into
#' # account
#' \dontrun{
#' expect_true(sqrt(2) ^ 2 == 2)
#' expect_identical(sqrt(2) ^ 2, 2)
#' }
#'
#' # expect_equivalent ignores attributes
#' a <- b <- 1:3
#' names(b) <- letters[1:3]
#' expect_equivalent(a, b)
#' @name equality-expectations
NULL

#' @export
#' @rdname equality-expectations
#' @param ... For `expect_equal()` and `expect_equivalent()`, passed on
#'   [compare()], for `expect_identical()` passed on to [identical()].
#'   Used to control the details of the comparison.
#' @inheritParams waldo::compare
expect_equal <- function(object, expected, ...,
                         tolerance = testthat_tolerance(),
                         scale = "deprecated",
                         info = NULL, label = NULL,
                         expected.label = NULL) {

  if (!missing(scale)) {
    warn("`scale` is deprecated")
  }

  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect_waldo_equal(act, exp, info, ..., tolerance = tolerance)
}

#' @export
#' @rdname equality-expectations
expect_equivalent <- function(object, expected, ..., info = NULL, label = NULL,
                              expected.label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect_waldo_equal(act, exp, info, ..., ignore_attr = TRUE)
}

#' @export
#' @rdname equality-expectations
expect_identical <- function(object, expected, info = NULL, label = NULL,
                             expected.label = NULL, ...) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect_waldo_equal(act, exp, info, ...)
}

expect_waldo_equal <- function(act, exp, info, ...) {
  comp <- waldo::compare(act$val, exp$val, ..., x_arg = "actual", y_arg = "expected")
  expect(
    length(comp) == 0,
    sprintf(
      "`actual` (%s) not equal to `expected` (%s).\n\n%s",
      act$lab, exp$lab, paste0(comp, collapse = "\n\n")
    ),
    info = info
  )

  invisible(act$val)
}

#' Do two names point to the same underlying object?
#'
#' `expect_reference()` compares the underlying memory addresses of
#' two symbols. It is for expert use only.
#'
#' @inheritParams expect_equal
#' @export
expect_reference <- function(object, expected, info = NULL, label = NULL,
                             expected.label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect(
    is_reference(act$val, exp$val),
    sprintf("%s not a reference %s.", act$lab, exp$lab),
    info = info
  )
  invisible(act$val)
}

# expect_reference() needs dev version of rlang
utils::globalVariables("is_reference")
