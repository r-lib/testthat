

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
    expect(
      identical(x, NULL),
      "isn't null"
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

    expect(
      duration < amount,
      paste0("took ", duration, " seconds, which is more than ", amount)
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
      expect(
        !identical(names(x), NULL),
        paste0("does not have names")
      )
    }
  } else {
    expected <- normalise_names(expected, ignore.order, ignore.case)

    function(x) {
      x_names <- normalise_names(names(x), ignore.order, ignore.case)

      expect(
        identical(x_names, expected),
        paste0("names don't match ", paste0(expected, collapse = ", "))
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

    expect(
      diff > 0,
      paste0("not less than ", label, ". Difference: ", format(diff))
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
#' @rdname expect-compare
expect_lt <- function(object, expected) {
  label_object <- find_expr("object")
  label_expected <- find_expr("expected")

  diff <- expected - object

  expect(
    diff > 0,
    paste0(label_object, " is not less than ", label_expected,
           ". Difference: ", format(diff))
  )
}

#' @export
#' @rdname expect-compare
expect_lte <- function(object, expected) {
  label_object <- find_expr("object")
  label_expected <- find_expr("expected")

  diff <- expected - object

  expect(
    diff >= 0,
    paste0(label_object, " is strictly more than ", label_expected,
           ". Difference: ", format(diff))
  )
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

    expect(
      diff < 0,
      paste0("not more than ", label, ". Difference: ", format(diff))
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

#' @export
#' @rdname expect-compare
expect_gt <- function(object, expected) {
  label_object <- find_expr("object")
  label_expected <- find_expr("expected")

  diff <- expected - object

  expect(
    diff < 0,
    paste0(label_object, " is more than ", label_expected,
           ". Difference: ", format(diff))
  )
}

#' @export
#' @rdname expect-compare
expect_gte <- function(object, expected) {
  label_object <- find_expr("object")
  label_expected <- find_expr("expected")

  diff <- expected - object

  expect(
    diff <= 0,
    paste0(label_object, " is strictly less than ", label_expected,
           ". Difference: ", format(diff))
  )
}

make_label <- function(object, info = NULL, label = NULL) {
  if (!is.null(info)) {
    warning("`info` has been deprecated.", call. = FALSE)
  }
  if (!is.null(label)) {
    warning("`label` has been deprecated.", call. = FALSE)
  }

  label(object)
}

label <- function(obj) {
  x <- lazyeval::lazy(obj)

  paste(deparse(x$expr), collapse = "")
}
