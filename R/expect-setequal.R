#' Do you expect a vector containing these values?
#'
#' * `expect_setequal(x, y)` tests that every element of `x` occurs in `y`,
#'    and that every element of `y` occurs in `x`.
#' * `expect_contains(x, y)` tests that `x` contains every element of `y`
#'   (i.e. `y` is a subset of `x`).
#' * `expect_in(x, y)` tests every element of `x` is in `y`
#'   (i.e. `x` is a subset of `y`).
#' * `expect_mapequal(x, y)` treats lists as if they are mappings between names
#'   and values. Concretely, this drops `NULL`s in both objects and sorts
#'   named components.
#'
#' Note that `expect_setequal()` ignores names, and you will be warned if both
#' `object` and `expected` have them.
#'
#' @inheritParams expect_equal
#' @export
#' @examples
#' expect_setequal(letters, rev(letters))
#' show_failure(expect_setequal(letters[-1], rev(letters)))
#'
#' x <- list(b = 2, a = 1)
#' expect_mapequal(x, list(a = 1, b = 2))
#' show_failure(expect_mapequal(x, list(a = 1)))
#' show_failure(expect_mapequal(x, list(a = 1, b = "x")))
#' show_failure(expect_mapequal(x, list(a = 1, b = 2, c = 3)))
expect_setequal <- function(object, expected) {
  act <- quasi_label(enquo(object))
  exp <- quasi_label(enquo(expected))

  check_vector(object)
  check_vector(expected)
  if (!is.null(names(act$val)) && !is.null(names(exp$val))) {
    testthat_warn("expect_setequal() ignores names")
  }

  expect_setequal_(act, exp)
}

expect_setequal_ <- function(
  act,
  exp,
  trace_env = caller_env(),
  error_prefix = NULL
) {
  act_miss <- unique(act$val[!act$val %in% exp$val])
  exp_miss <- unique(exp$val[!exp$val %in% act$val])

  if (length(exp_miss) || length(act_miss)) {
    msg <- paste0(
      if (!is.null(error_prefix)) {
        error_prefix
      },
      act$lab,
      " doesn't have the same values as ",
      exp$lab,
      ".\n",
      if (length(act_miss)) {
        paste0("* Only in `actual`: ", values(act_miss), "\n")
      },
      if (length(exp_miss)) {
        paste0("* Only in `expected`: ", values(exp_miss), "\n")
      }
    )
    return(fail(msg, trace_env = trace_env))
  }
  pass(act$val)
}

values <- function(x) {
  has_extra <- length(x) > 10
  if (has_extra) {
    x <- x[1:9]
  }
  if (is.character(x)) {
    x <- encodeString(x, quote = '"')
  }

  out <- paste0(x, collapse = ", ")
  if (has_extra) {
    out <- paste0(out, ", ...")
  }
  out
}

is_vector <- function(x) is.list(x) || (is.atomic(x) && !is.null(x))

#' @export
#' @rdname expect_setequal
expect_mapequal <- function(object, expected) {
  act <- quasi_label(enquo(object))
  exp <- quasi_label(enquo(expected))

  expect_waldo_equal_("equal", act, exp, list_as_map = TRUE)
}

#' @export
#' @rdname expect_setequal
expect_contains <- function(object, expected) {
  act <- quasi_label(enquo(object))
  exp <- quasi_label(enquo(expected))

  check_vector(object)
  check_vector(expected)

  exp_miss <- !exp$val %in% act$val
  if (any(exp_miss)) {
    return(fail(paste0(
      act$lab,
      " doesn't fully contain all the values in ",
      exp$lab,
      ".\n",
      paste0("* Missing from ", act$lab, ": ", values(exp$val[exp_miss]), "\n"),
      paste0("* Present in ", act$lab, ":   ", values(act$val), "\n")
    )))
  }

  pass(act$val)
}

#' @export
#' @rdname expect_setequal
expect_in <- function(object, expected) {
  act <- quasi_label(enquo(object))
  exp <- quasi_label(enquo(expected))

  check_vector(object)
  check_vector(expected)

  act_miss <- !act$val %in% exp$val
  if (any(act_miss)) {
    return(fail(paste0(
      act$lab,
      " isn't fully contained within ",
      exp$lab,
      ".\n",
      paste0("* Missing from ", act$lab, ": ", values(act$val[act_miss]), "\n"),
      paste0("* Present in ", act$lab, ":   ", values(exp$val), "\n")
    )))
  }

  pass(act$val)
}

# Helpers ----------------------------------------------------------------------

check_vector <- function(
  x,
  error_arg = caller_arg(x),
  error_call = caller_env()
) {
  if (!is_vector(x)) {
    stop_input_type(x, "a vector", arg = error_arg, call = error_call)
  }
}
