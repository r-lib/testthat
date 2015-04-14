#' Expectation: is the object equal to a value?
#'
#' \itemize{
#' \item \code{expect_identical} tests with \code{\link{identical}}
#' \item \code{expect_equal} tests with \code{\link{all.equal}}
#' \item \code{expect_equivalent} tests with \code{\link{all.equal}} and
#'   \code{check.attributes = FALSE}
#' }
#
#' @param expected Expected value
#' @param label For full form, label of expected object used in error
#'   messages. Useful to override default (deparsed expected expression) when
#'   doing tests in a loop.  For short cut form, object label. When
#'   \code{NULL}, computed from deparsed object.
#' @param expected.label Equivalent of \code{label} for shortcut form.
#' @param ... other values passed to \code{\link{all.equal}}
#' @family expectations
#' @examples
#' a <- 10
#' expect_equal(a, 10)
#'
#' # Use equals() when testing for numeric equality
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
#' expect_equal(object = 10.01, expected = 10, tolerance = .002,
#'   scale = 1)
#'
#' # Test the RELATIVE difference is within .002
#' expectedValue <- 10
#' expect_equal(object = 10.01, expected = expectedValue, tolerance = 0.002,
#'   scale = expectedValue)
#' }
#'
#' # expect_equalivalent ignores attributes
#' a <- b <- 1:3
#' names(b) <- letters[1:3]
#' expect_equivalent(a, b)
#' @name equivalence
NULL

#' @export
#' @rdname oldskool
equals <- function(expected, label = NULL, ...) {
  if (is.null(label)) {
    label <- find_expr("expected")
  } else if (!is.character(label) || length(label) != 1) {
    label <- deparse(label)
  }

  function(actual) {
    same <- compare(expected, actual, ...)

    expectation(
      same$equal,
      paste0("not equal to ", label, "\n", same$message),
      paste0("equals ", label)
    )
  }
}

#' @export
#' @rdname equivalence
#' @inheritParams expect_that
expect_equal <- function(object, expected, ..., info = NULL, label = NULL,
  expected.label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  if (is.null(expected.label)) {
    expected.label <- find_expr("expected")
  }
  expect_that(object, equals(expected, label = expected.label, ...),
    info = info, label = label)
}


#' @export
#' @rdname oldskool
is_equivalent_to <- function(expected, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("expected")
  } else if (!is.character(label) || length(label) != 1) {
    label <- deparse(label)
  }
  function(actual) {
    equals(expected, check.attributes = FALSE)(actual)
  }
}

#' @export
#' @rdname equivalence
expect_equivalent <- function(object, expected, info = NULL, label = NULL,
                              expected.label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  if (is.null(expected.label)) {
    expected.label <- find_expr("expected")
  }
  expect_that(object, is_equivalent_to(expected, label = expected.label),
    info = info, label = label)
}

#' @export
#' @rdname oldskool
is_identical_to <- function(expected, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("expected")
  } else if (!is.character(label) || length(label) != 1) {
    label <- deparse(label)
  }

  function(actual) {
    if (identical(actual, expected)) {
      diff <- ""
    } else {
      same <- all.equal(expected, actual)
      if (isTRUE(same)) {
        diff <- "Objects equal but not identical"
      } else {
        diff <- paste0(same, collapse = "\n")
      }
    }

    expectation(
      identical(actual, expected),
      paste0("is not identical to ", label, ". Differences: \n", diff),
      paste0("is identical to ", label)
    )
  }
}

#' @export
#' @rdname equivalence
expect_identical <- function(object, expected, info = NULL, label = NULL,
                             expected.label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  if (is.null(expected.label)) {
    expected.label <- find_expr("expected")
  }
  expect_that(object, is_identical_to(expected, label = expected.label),
    info = info, label = label)
}


#' Expectation: is the object equal to a reference value stored in a file?
#'
#' This expectation is equivalent to \code{\link{expect_equal}}, except that the
#' expected value is stored in an RDS file instead of being specified literally.
#' This can be helpful when the value is necessarily complex. If the file does
#' not exist then it will be created using the value of the specified object,
#' and subsequent tests will check for consistency against that generated value.
#' The test can be reset by deleting the RDS file.
#'
#' It is important to initialize the reference RDS file within the source
#' package, most likely in the \code{tests/testthat/} directory. Testing spawned
#' by \code{devtools::test()}, for example, will accomplish this. But note that
#' testing spawned by \code{R CMD check} and \code{devtools::check()} will NOT.
#' In the latter cases, the package source is copied to an external location
#' before tests are run. The resulting RDS file will not make its way back into
#' the package source and will not be available for subsequent comparisons.
#'
#' @inheritParams expect_that
#' @param file The file name used to store the object. Should have an "rds"
#'   extension.
#' @param label For the full form, a label for the expected object, which is
#'   used in error messages. Useful to override the default (which is based on
#'   the file name), when doing tests in a loop. For the short-cut form, the
#'   object label, which is computed from the deparsed object by default.
#' @param expected.label Equivalent of \code{label} for shortcut form.
#' @param ... other values passed to \code{\link{expect_equal}}
#' @family expectations
#' @export
#' @examples
#' \dontrun{
#' expect_equal_to_reference(1, "one.rds")
#' }
expect_equal_to_reference <- function(object, file, ..., info = NULL,
  label = NULL, expected.label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  if (is.null(expected.label)) {
    expected.label <- paste("reference from", file)
  }
  expect_that(object, equals_reference(file, label = expected.label, ...),
    info = info, label = label)
}
#' @export
#' @rdname oldskool
equals_reference <- function(file, label = NULL, ...) {
  if (file.exists(file)) {
    reference <- readRDS(file)
    if (is.null(label)) {
      label <- paste("reference from", file)
    }
    equals(reference, label = label, ...)
  } else {
    function(actual) {
      # saveRDS() returns no useful information to use for the expectation
      saveRDS(actual, file)
      expectation(TRUE, "should never fail", "saved to file")
    }
  }
}
