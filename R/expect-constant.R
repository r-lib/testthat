#' Does code return `TRUE` or `FALSE`?
#'
#' These are fall-back expectations that you can use when none of the other
#' more specific expectations apply. The disadvantage is that you may get
#' a less informative error message.
#'
#' Attributes are ignored.
#'
#' @seealso [is_false()] for complement
#' @inheritParams expect_that
#' @family expectations
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
#' @name logical-expectations
NULL

#' @export
#' @rdname logical-expectations
expect_true <- function(object, info = NULL, label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  act$val <- as.vector(act$val)

  expect_waldo_constant(act, TRUE, info = info)
}

#' @export
#' @rdname logical-expectations
expect_false <- function(object, info = NULL, label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  act$val <- as.vector(act$val)

  expect_waldo_constant(act, FALSE, info = info)
}

#' Does code return `NULL`?
#'
#' This is a special case because `NULL` is a singleton so it's possible
#' check for it either with `expect_equal(x, NULL)` or `expect_type(x, "NULL")`.
#'
#' @inheritParams expect_that
#' @keywords internal
#' @export
#' @family expectations
#' @examples
#' x <- NULL
#' y <- 10
#'
#' expect_null(x)
#' show_failure(expect_null(y))
expect_null <- function(object, info = NULL, label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")

  expect_waldo_constant(act, NULL, info = info)
}

# helpers -----------------------------------------------------------------

expect_waldo_constant <- function(act, constant, info) {
  comp <- waldo_compare(act$val, constant, x_arg = "actual", y_arg = "expected")

  expect(
    identical(act$val, constant),
    sprintf(
      "%s is not %s\n\n%s",
      act$lab, deparse(constant),
      paste0(comp, collapse = "\n\n")
    ),
    info = info,
    trace_env = caller_env()
  )

  invisible(act$val)
}

