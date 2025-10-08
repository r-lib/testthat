#' Do you expect every value in a vector to have this value?
#'
#' These expectations are similar to `expect_true(all(x == "x"))`,
#' `expect_true(all(x))` and `expect_true(all(!x))` but give more informative
#' failure messages if the expectations are not met.
#'
#' @inheritParams expect_equal
#' @export
#' @examples
#' x1 <- c(1, 1, 1, 1, 1, 1)
#' expect_all_equal(x1, 1)
#'
#' x2 <- c(1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 2)
#' show_failure(expect_all_equal(x2, 1))
#'
#' # expect_all_true() and expect_all_false() are helpers for common cases
#' set.seed(1016)
#' show_failure(expect_all_true(rpois(100, 10) < 20))
#' show_failure(expect_all_false(rpois(100, 10) > 20))
expect_all_equal <- function(object, expected) {
  act <- quasi_label(enquo(object))
  exp <- quasi_label(enquo(expected))

  expect_all_equal_(act, exp)
  invisible(act$val)
}

#' @export
#' @rdname expect_all_equal
expect_all_true <- function(object) {
  act <- quasi_label(enquo(object))
  exp <- labelled_value(TRUE, "TRUE")

  expect_all_equal_(act, exp)
  invisible(act$val)
}

#' @export
#' @rdname expect_all_equal
expect_all_false <- function(object) {
  act <- quasi_label(enquo(object))
  exp <- labelled_value(FALSE, "FALSE")

  expect_all_equal_(act, exp)
  invisible(act$val)
}


expect_all_equal_ <- function(act, exp, trace_env = caller_env()) {
  check_vector(act$val, error_call = trace_env, error_arg = "object")
  if (length(act$val) == 0) {
    cli::cli_abort("{.arg object} must not be empty.", call = trace_env)
  }

  check_vector(exp$val, error_call = trace_env, error_arg = "expected")
  if (length(exp$val) != 1) {
    cli::cli_abort("{.arg expected} must be length 1.", call = trace_env)
  }

  exp$val <- rep(exp$val, length(act$val))
  names(exp$val) <- names(act$val)
  expect_waldo_equal_(
    "Expected every element of %s to equal %s.",
    act,
    exp,
    tolerance = testthat_tolerance(),
    trace_env = trace_env
  )
}
