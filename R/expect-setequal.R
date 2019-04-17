#' Expectation: do two vectors contain the same values?
#'
#' `expect_setequal(x, y)` tests that every element of `x` occurs in `y`,
#' and that every element of `y` occurs in `x`. Note that this definition
#' ignores names, and you will be warned if both `object` and `expected` have
#' names.
#'
#' @inheritParams expect_equal
#' @export
#' @rdname equality-expectations
#' @examples
#' expect_setequal(letters, rev(letters))
#' show_failure(expect_setequal(letters[-1], rev(letters)))
expect_setequal <- function(object, expected) {
  act <- quasi_label(enquo(object), arg = "object")
  exp <- quasi_label(enquo(expected), arg = "expected")

  if (!is_vector(act$val) || !is_vector(exp$val)) {
    abort("`object` and `expected` must both be vectors")
  }

  if (!is.null(names(act$val)) && !is.null(names(exp$val))) {
    warn("expect_setequal() ignores names")
  }

  act_miss <- !act$val %in% exp$val
  if (any(act_miss)) {
    fail(
      paste0(act$lab, "[", locations(act_miss), "] absent from ", exp$lab)
    )
  }

  exp_miss <- !exp$val %in% act$val
  if (any(exp_miss)) {
    fail(
      paste0(exp$lab, "[", locations(exp_miss), "] absent from ", act$lab)
    )
  }

  if (!any(exp_miss) && !any(act_miss)) {
    succeed()
  }

  invisible(act$val)
}

is_vector <- function(x) is.list(x) || (is.atomic(x) && !is.null(x))

locations <- function(i) {
  loc <- which(i)
  if (length(loc) == 1) {
    return(loc)
  }

  if (length(loc) > 10) {
    loc <- c(loc[1:9], "...")
  }

  paste0("c(", paste0(loc, collapse = ", "), ")")
}

