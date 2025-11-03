#' Do you expect `TRUE` or `FALSE`?
#'
#' @description
#' These are fall-back expectations that you can use when none of the other
#' more specific expectations apply. The disadvantage is that you may get
#' a less informative error message.
#'
#' Attributes are ignored.
#'
#' @inheritParams expect_that
#' @family expectations
#' @examples
#' expect_true(2 == 2)
#' # Failed expectations will throw an error
#' show_failure(expect_true(2 != 2))
#'
#' # where possible, use more specific expectations, to get more informative
#' # error messages
#' a <- 1:4
#' show_failure(expect_true(length(a) == 3))
#' show_failure(expect_equal(length(a), 3))
#' 
#' x <- c(TRUE, TRUE, FALSE, TRUE)
#' show_failure(expect_true(all(x)))
#' show_failure(expect_all_true(x))
#' @name logical-expectations
NULL

#' @export
#' @rdname logical-expectations
expect_true <- function(object, info = NULL, label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- labelled_value(TRUE, "TRUE")

  expect_waldo_constant_(act, exp, info = info, ignore_attr = TRUE)
  invisible(act$val)
}

#' @export
#' @rdname logical-expectations
expect_false <- function(object, info = NULL, label = NULL) {
  act <- quasi_label(enquo(object), label)
  exp <- labelled_value(FALSE, "FALSE")

  expect_waldo_constant_(act, exp, info = info, ignore_attr = TRUE)
  invisible(act$val)
}

#' Do you expect `NULL`?
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
  act <- quasi_label(enquo(object), label)
  exp <- labelled_value(NULL, "NULL")

  expect_waldo_constant_(act, exp, info = info)
  invisible(act$val)
}

expect_waldo_constant_ <- function(
  act,
  exp,
  ...,
  info = NULL,
  trace_env = caller_env()
) {
  comp <- waldo_compare(
    act$val,
    exp$val,
    ...,
    x_arg = "actual",
    y_arg = "expected"
  )
  if (length(comp) != 0) {
    msg <- c(
      sprintf("Expected %s to be %s.", act$lab, exp$lab),
      "Differences:",
      paste0(comp, "\n")
    )
    fail(msg, info = info, trace_env = trace_env)
  } else {
    pass()
  }
}
