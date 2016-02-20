
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
#' @name comparison-expectations
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
#' @rdname comparison-expectations
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
#' @rdname comparison-expectations
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
#' @rdname comparison-expectations
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
#' @rdname comparison-expectations
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
#' @rdname comparison-expectations
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
#' @rdname comparison-expectations
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
