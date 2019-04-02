#' Expectation: is the object equal to a value?
#'
#' - `expect_identical()` compares values with [identical()].
#' - `expect_equal()` compares values  with [all.equal()]
#' - `expect_equivalent()` compares values with [all.equal()] and
#'    `check.attributes = FALSE`
#' - `expect_reference()` compares the underlying memory addresses.
#
#' @param object,expected Computation and value to compare it to.
#'
#'   Both arguments supports limited unquoting to make it easier to generate
#'   readable failures within a function or for loop. See [quasi_label] for
#'   more details.
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
#' sqrt(2) ^ 2 - 1
#' expect_equal(sqrt(2) ^ 2, 2)
#' # Neither of these forms take floating point representation errors into
#' # account
#' \dontrun{
#' expect_true(sqrt(2) ^ 2 == 2)
#' expect_identical(sqrt(2) ^ 2, 2)
#' }
#'
#' # You can pass on additional arguments to all.equal:
#' \dontrun{
#' # Test the ABSOLUTE difference is within .002
#' expect_equal(10.01, 10, tolerance = .002, scale = 1)
#' }
#'
#' # Test the RELATIVE difference is within .002
#' x <- 10
#' expect_equal(10.01, expected = x, tolerance = 0.002, scale = x)
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
expect_equal <- function(object, expected, ..., info = NULL, label = NULL,
                         expected.label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  comp <- compare(act$val, exp$val, ...)
  expect(
    comp$equal,
    sprintf("%s not equal to %s.\n%s", act$lab, exp$lab, comp$message),
    info = info
  )

  invisible(act$val)
}

#' @export
#' @rdname equality-expectations
expect_equivalent <- function(object, expected, ..., info = NULL, label = NULL,
                              expected.label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  comp <- compare(act$val, exp$val, ..., check.attributes = FALSE)
  expect(
    comp$equal,
    sprintf("%s not equivalent to %s.\n%s", act$lab, exp$lab, comp$message),
    info = info
  )
  invisible(act$val)
}

#' @export
#' @rdname equality-expectations
expect_identical <- function(object, expected, info = NULL, label = NULL,
                             expected.label = NULL, ...) {
  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  ident <- identical(act$val, exp$val, ...)
  if (ident) {
    msg <- ""
  } else {
    compare <- compare(act$val, exp$val)
    if (compare$equal) {
      msg <- "Objects equal but not identical"
    } else {
      msg <- compare$message
    }
  }

  expect(
    ident,
    sprintf("%s not identical to %s.\n%s", act$lab, exp$lab, msg),
    info = info
  )
  invisible(act$val)
}

#' @export
#' @rdname equality-expectations
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
