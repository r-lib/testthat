#' Expectation: is the object equal to a value?
#'
#' @description
#' These three functions use [waldo](https://github.com/r-lib/waldo) to
#' compare the results of some code to an `expected` result. They differ in
#' their level of strictness, as determined by additional arguments passed on
#' to `waldo::compare()`:
#'
#' - `expect_identical()` is the strictest comparison.
#' - `expect_equal()` sets `tolerance = testthat_tolerance()` so that
#'   small floating point differences are ignored; this also implies that
#'   (e.g.) `1` and `1L` are treated as equal.
#' - `expect_equivalent()` sets `ignore_attr = TRUE` and
#'   `tolerance = testthat_tolerance()`, ignoring small floating point
#'   differences and all differences in attributes.
#'
#' In most cases you should use `expect_equal()`.
#'
#' @param object,expected Computation and value to compare it to.
#'
#'   Both arguments supports limited unquoting to make it easier to generate
#'   readable failures within a function or for loop. See [quasi_label] for
#'   more details.
#' @param ... Passed on to [waldo::compare()] to control the details of
#'   the comparison.
#' @param label,expected.label Used to customise failure messages. For expert
#'   use only.
#' @seealso `expect_setequal()` to test for set equality.
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
#'
#' # expect_equivalent() ignores attributes
#' a <- b <- 1:3
#' names(b) <- letters[1:3]
#' \dontrun{
#' expect_equal(a, b)
#' }
#' expect_equivalent(a, b)
#' @name equality-expectations
NULL

#' @export
#' @rdname equality-expectations
#' @inheritParams waldo::compare
expect_equal <- function(object, expected, ...,
                         tolerance = testthat_tolerance(),
                         info = NULL, label = NULL,
                         expected.label = NULL) {

  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
}

#' @export
#' @rdname equality-expectations
expect_equivalent <- function(object, expected, ..., info = NULL, label = NULL,
                              expected.label = NULL,
                              tolerance = testthat_tolerance()) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect_waldo_equal(
    "equivalent", act, exp, info, ...,
    ignore_attr = TRUE,
    tolerance = tolerance
  )
}

#' @export
#' @rdname equality-expectations
expect_identical <- function(object, expected, info = NULL, label = NULL,
                             expected.label = NULL, ...) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect_waldo_equal("identical", act, exp, info, ...)
}

expect_waldo_equal <- function(type, act, exp, info, ...) {
  comp <- waldo::compare(act$val, exp$val, ..., x_arg = "actual", y_arg = "expected")
  expect(
    length(comp) == 0,
    sprintf(
      "`actual` (%s) not %s to `expected` (%s).\n\n%s",
      act$lab, type, exp$lab, paste0(comp, collapse = "\n\n")
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
#' @family expectations
#' @export
expect_reference <- function(object, expected, info = NULL, label = NULL,
                             expected.label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  expect(
    is_reference(act$val, exp$val),
    sprintf("%s not a reference to %s.", act$lab, exp$lab),
    info = info
  )
  invisible(act$val)
}

# expect_reference() needs dev version of rlang
utils::globalVariables("is_reference")
