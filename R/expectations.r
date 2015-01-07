#' Expectation: does the object inherit from a class?
#'
#' Tests whether or not an object inherits from any of a list of classes.
#'
#' @inheritParams expect_that
#' @param class character vector of class names
#' @seealso \code{\link{inherits}}
#' @family expectations
#' @export
#' @examples
#' expect_is(1, "numeric")
#' a <- matrix(1:10, nrow = 5)
#' expect_is(a, "matrix")
#'
#' expect_is(mtcars, "data.frame")
#' # alternatively for classes that have an is method
#' expect_true(is.data.frame(mtcars))
expect_is <- function(object, class, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, is_a(class), info, label)
}

#' @export
#' @rdname oldskool
is_a <- function(class) {
  function(x) {
    actual <- paste0(class(x), collapse = ", ")
    expectation(
      inherits(x, class),
      paste0("inherits from ", actual, " not ", class),
      paste0("inherits from ", class)
    )
  }
}

#' Expectation: is the object true/false?
#'
#' These are fall-back expectations that you can use when none of the other
#' more specific expectations apply. The disadvantage is that you may get
#' a less informative error message.
#'
#' Attributes are ignored.
#'
#' @seealso \code{\link{is_false}} for complement
#' @family expectations
#' @export
#' @examples
#' expect_true(2 == 2)
#' # Failed expectations will throw an error
#' \dontrun{
#' expect_true(2 != 2)
#' }
#' expect_true(!(2 != 2))
#' # or better:
#' expect_false(2 != 2)
#'
#' a <- 1:3
#' expect_true(length(a) == 3)
#' # but better to use more specific expectation, if available
#' expect_equal(length(a), 3)
expect_true <- function(object, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, is_true(), info, label)
}

#' @export
#' @rdname expect_true
#' @inheritParams expect_that
expect_false <- function(object, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, is_false(), info, label)
}

#' @export
#' @rdname oldskool
is_true <- function() {
  function(x) {
    expectation(
      identical(as.vector(x), TRUE),
      "isn't true",
      "is true"
    )
  }
}

#' @export
#' @rdname oldskool
is_false <- function() {
  function(x) {
    expectation(
      identical(as.vector(x), FALSE),
      "isn't false",
      "is false"
    )
  }
}

#' Expectation: is the object NULL?
#'
#' @family expectations
#' @inheritParams expect_that
#' @export
#' @examples
#' expect_null(NULL)
expect_null <- function(object, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, is_null(), info, label)
}

#' @export
#' @rdname oldskool
is_null <- function() {
  function(x) {
    expectation(
      identical(x, NULL),
      "isn't null",
      "is null"
    )
  }
}

#' Expectation: does expression take less than a fixed amount of time to run?
#'
#' This is useful for performance regression testing.
#'
#' @family expectations
#' @keywords internal
#' @export
#' @param amount maximum duration in seconds
takes_less_than <- function(amount) {
  function(expr) {
    duration <- system.time(force(expr))["elapsed"]

    expectation(
      duration < amount,
      paste0("took ", duration, " seconds, which is more than ", amount),
      paste0("took ", duration, " seconds, which is less than ", amount)
    )
  }
}

#' Expectation: does object have names?
#'
#' You can either check for the presence of names (leaving \code{expected}
#' blank), specific names (by suppling a vector of names), or absence of
#' names (with \code{NULL}).
#'
#' @inheritParams expect_that
#' @param expected Character vector of expected names. Leave missing to
#'   match any names. Use \code{NULL} to check for absence of names.
#' @param ignore.order If \code{TRUE}, sorts names before comparing to
#'   ignore the effect of order.
#' @param ignore.case If \code{TRUE}, lowercases all names to ignore the
#'   effect of case.
#' @param ... Other arguments passed onto \code{has_names}.
#' @family expectations
#' @export
#' @examples
#' x <- c(a = 1, b = 2, c = 3)
#' expect_named(x)
#' expect_named(x, c("a", "b", "c"))
#'
#' # Use options to control sensitivity
#' expect_named(x, c("B", "C", "A"), ignore.order = TRUE, ignore.case = TRUE)
#'
#' # Can also check for the absence of names with NULL
#' z <- 1:4
#' expect_named(z, NULL)
expect_named <- function(object, expected, ignore.order = FALSE,
                         ignore.case = FALSE, info = NULL,
  label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, has_names(expected, ignore.order = ignore.order,
    ignore.case = ignore.case), info = info, label = label)
}
#' @export
#' @rdname oldskool
has_names <- function(expected, ignore.order = FALSE, ignore.case = FALSE) {
  if (missing(expected)) {
    function(x) {
      expectation(
        !identical(names(x), NULL),
        paste0("does not have names"),
        paste0("has names")
      )
    }
  } else {
    expected <- normalise_names(expected, ignore.order, ignore.case)

    function(x) {
      x_names <- normalise_names(names(x), ignore.order, ignore.case)

      expectation(
        identical(x_names, expected),
        paste0("names don't match ", paste0(expected, collapse = ", ")),
        paste0("names as expected")
      )
    }
  }
}

normalise_names <- function(x, ignore.order = FALSE, ignore.case = FALSE) {
  if (is.null(x)) return()

  if (ignore.order) x <- sort(x)
  if (ignore.case)  x <- tolower(x)

  x
}

#' Expectation: is returned value less or greater than specified value?
#'
#' This is useful for ensuring returned value is below a ceiling or above
#' a floor.
#'
#' @inheritParams expect_that
#' @param expected Expected value
#' @param label For full form, label of expected object used in error
#'   messages. Useful to override default (deparsed expected expression) when
#'   doing tests in a loop.  For short cut form, object label. When
#'   \code{NULL}, computed from deparsed object.
#' @param expected.label Equivalent of \code{label} for shortcut form.
#' @param ... other values passed to \code{\link{all.equal}}
#' @family expectations
#' @examples
#' a <- 9
#' expect_less_than(a, 10)
#'
#' \dontrun{
#' expect_less_than(11, 10)
#' }
#'
#' a <- 11
#' expect_more_than(a, 10)
#' \dontrun{
#' expect_more_than(9, 10)
#' }
#' @name expect-compare
NULL

#' @export
#' @rdname oldskool
is_less_than <- function(expected, label = NULL, ...) {
  if (is.null(label)) {
    label <- find_expr("expected")
  } else if (!is.character(label) || length(label) != 1) {
    label <- deparse(label)
  }
  function(actual) {
    diff <- expected - actual

    expectation(
      diff > 0,
      paste0("not less than ", label, ". Difference: ", format(diff)),
      paste0("is less than ", label)
    )
  }
}

#' @export
#' @rdname expect-compare
expect_less_than <- function(object, expected, ..., info = NULL, label = NULL,
                         expected.label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  if (is.null(expected.label)) {
    expected.label <- find_expr("expected")
  }
  expect_that(object, is_less_than(expected, label = expected.label, ...),
              info = info, label = label)
}

#' @export
#' @rdname oldskool
is_more_than <- function(expected, label = NULL, ...) {
  if (is.null(label)) {
    label <- find_expr("expected")
  } else if (!is.character(label) || length(label) != 1) {
    label <- deparse(label)
  }
  function(actual) {
    diff <- expected - actual

    expectation(
      diff < 0,
      paste0("not more than ", label, ". Difference: ", format(diff)),
      paste0("is more than ", label)
    )
  }
}

#' @export
#' @rdname expect-compare
expect_more_than <- function(object, expected, ..., info = NULL, label = NULL,
                             expected.label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  if (is.null(expected.label)) {
    expected.label <- find_expr("expected")
  }
  expect_that(object, is_more_than(expected, label = expected.label, ...),
              info = info, label = label)
}
