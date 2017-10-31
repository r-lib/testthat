#' Expectation: is the object equal to a value?
#'
#' - `expect_identical` tests with [identical()]
#' - `expect_equal` tests with [all.equal()]
#' - `expect_setequal` ignores order and duplicates
#' - `expect_equivalent` tests with [all.equal()] and
#'   `check.attributes = FALSE`
#' - `expect_reference` tests if two symbols point to the same underlying
#'    object in memory (requires rlang 1.2.9000 or greater)
#
#' @param expected Expected value
#' @param expected.label Equivalent of `label` for shortcut form.
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
#' @param ... other values passed to [all.equal()]
expect_equal <- function(object, expected, ..., info = NULL, label = NULL,
                         expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

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
expect_setequal <- function(object, expected) {
  act <- quasi_label(enquo(object))
  exp <- quasi_label(enquo(expected))

  act$val <- sort(unique(act$val))
  exp$val <- sort(unique(exp$val))

  comp <- compare(act$val, exp$val)
  expect(
    comp$equal,
    sprintf("%s not set-equal to %s.\n%s", act$lab, exp$lab, comp$message)
  )

  invisible(act$val)
}


#' @export
#' @rdname equality-expectations
expect_equivalent <- function(object, expected, ..., info = NULL, label = NULL,
                              expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

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
                             expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  ident <- identical(act$val, exp$val)
  if (ident) {
    msg <- ""
  } else {
    compare <- compare(obj$val, exp$val)
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
expect_identical <- function(object, expected, info = NULL, label = NULL,
                             expected.label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  ident <- identical(act$val, exp$val)
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
  act <- quasi_label(enquo(object), label)
  exp <- quasi_label(enquo(expected), expected.label)

  expect(
    is_reference(act$val, exp$val),
    sprintf("%s not a reference %s.", act$lab, exp$lab),
    info = info
  )
  invisible(act$val)
}
