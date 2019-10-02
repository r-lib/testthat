#' Expectation: is an object `NULL`?
#'
#' This is a special case because `NULL` is a singleton so it's possible
#' check for it either with `expect_equal(x, NULL)` or `expect_type(x, "NULL")`.
#'
#' @inheritParams expect_that
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

  expect(
    is.null(act$val),
    sprintf("%s is not null.", act$lab),
    info = info
  )
  invisible(act$val)
}
