#' Do you expect a vector containing these values?
#'
#' * `expect_setequal(x, y)` tests that every element of `x` occurs in `y`,
#'    and that every element of `y` occurs in `x`.
#' * `expect_contains(x, y)` tests that `x` contains every element of `y`
#'   (i.e. `y` is a subset of `x`).
#' * `expect_in(x, y)` tests that every element of `x` is in `y`
#'   (i.e. `x` is a subset of `y`).
#' * `expect_disjoint(x, y)` tests that no element of `x` is in `y`
#'   (i.e. `x` is disjoint from `y`).
#' * `expect_mapequal(x, y)` treats lists as if they are mappings between names
#'   and values. Concretely, checks that `x` and `y` have the same names, then
#'   checks that `x[names(y)]` equals `y`.
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

  check_vector(act$val, error_arg = "object")
  check_vector(exp$val, error_arg = "expected")
  if (!is.null(names(act$val)) && !is.null(names(exp$val))) {
    testthat_warn("expect_setequal() ignores names")
  }

  expect_setequal_("Expected %s to have the same values as %s.", act, exp)
}

expect_setequal_ <- function(msg, act, exp, trace_env = caller_env()) {
  act_miss <- unique(act$val[!act$val %in% exp$val])
  exp_miss <- unique(exp$val[!exp$val %in% act$val])

  if (length(exp_miss) == 0 && length(act_miss) == 0) {
    pass()
  } else {
    msg_exp <- sprintf(msg, act$lab, exp$lab)
    msg_act <- c(
      sprintf("Actual: %s", values(act$val)),
      sprintf("Expected: %s", values(exp$val)),
      if (length(act_miss)) sprintf("Needs: %s", values(act_miss)),
      if (length(exp_miss)) sprintf("Absent: %s", values(exp_miss))
    )
    fail(c(msg_exp, msg_act), trace_env = trace_env)
  }

  invisible(act$val)
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

  check_vector(act$val, error_arg = "object")
  check_map_names(act$val, error_arg = "object")
  check_vector(exp$val, error_arg = "expected")
  check_map_names(exp$val, error_arg = "expected")

  act_nms <- names(act$val)
  exp_nms <- names(exp$val)

  # Length-0 vectors are OK whether named or unnamed.
  if (length(act$val) == 0 && length(exp$val) == 0) {
    testthat_warn("`object` and `expected` are empty vectors.")
    pass()
  } else {
    if (!setequal(act_nms, exp_nms)) {
      msg <- "Expected %s to have the same names as %s."
      act_names <- labelled_value(names(act$val), act$lab)
      exp_names <- labelled_value(names(exp$val), exp$lab)
      expect_setequal_(msg, act_names, exp_names)
    } else {
      if (edition_get() >= 3) {
        act <- labelled_value(act$val[exp_nms], act$lab)

        msg <- "Expected %s to contain the same values as %s."
        expect_waldo_equal_(msg, act, exp, tolerance = testthat_tolerance())
      } else {
        # Packages depend on 2e behaviour, but the expectation isn't written
        # to be reused, and we don't want to bother
        expect_equal(act$val[exp_nms], exp$val)
      }
    }
  }

  invisible(act$val)
}

#' @export
#' @rdname expect_setequal
expect_contains <- function(object, expected) {
  act <- quasi_label(enquo(object))
  exp <- quasi_label(enquo(expected))

  check_vector(act$val, error_arg = "object")
  check_vector(exp$val, error_arg = "expected")

  exp_miss <- !exp$val %in% act$val
  if (any(exp_miss)) {
    msg_exp <- sprintf(
      "Expected %s to contain all values in %s.",
      act$lab,
      exp$lab
    )
    msg_act <- c(
      sprintf("Actual: %s", values(act$val)),
      sprintf("Expected: %s", values(exp$val)),
      sprintf("Missing: %s", values(exp$val[exp_miss]))
    )
    fail(c(msg_exp, msg_act))
  } else {
    pass()
  }

  invisible(act$val)
}


#' @export
#' @rdname expect_setequal
expect_in <- function(object, expected) {
  act <- quasi_label(enquo(object))
  exp <- quasi_label(enquo(expected))

  check_vector(act$val, error_arg = "object")
  check_vector(exp$val, error_arg = "expected")

  act_miss <- !act$val %in% exp$val
  if (any(act_miss)) {
    msg_exp <- sprintf(
      "Expected %s to only contain values from %s.",
      act$lab,
      exp$lab
    )
    msg_act <- c(
      sprintf("Actual: %s", values(act$val)),
      sprintf("Expected: %s", values(exp$val)),
      sprintf("Invalid: %s", values(act$val[act_miss]))
    )
    fail(c(msg_exp, msg_act))
  } else {
    pass()
  }

  invisible(act$val)
}

#' @export
#' @rdname expect_setequal
expect_disjoint <- function(object, expected) {
  act <- quasi_label(enquo(object))
  exp <- quasi_label(enquo(expected))

  check_vector(object)
  check_vector(expected)

  act_common <- act$val %in% exp$val
  if (any(act_common)) {
    msg_exp <- sprintf(
      "Expected %s to be disjoint from %s.",
      act$lab,
      exp$lab
    )
    msg_act <- c(
      sprintf("Actual: %s", values(act$val)),
      sprintf("Expected: None of %s", values(exp$val)),
      sprintf("Invalid: %s", values(act$val[act_common]))
    )
    fail(c(msg_exp, msg_act))
  }

  pass(act$val)
}

# Helpers ----------------------------------------------------------------------

check_vector <- function(x, error_arg, error_call = caller_env()) {
  if (!is_vector(x)) {
    stop_input_type(x, "a vector", arg = error_arg, call = error_call)
  }
}

check_map_names <- function(x, error_arg, error_call = caller_env()) {
  nms <- names2(x)
  if (anyDuplicated(nms)) {
    dups <- unique(nms[duplicated(nms)])
    cli::cli_abort(
      c(
        "All elements in {.arg {error_arg}} must have unique names.",
        x = "Duplicate names: {.str {dups}}"
      ),
      call = error_call
    )
  }
  if (any(nms == "")) {
    empty <- which(nms == "")
    cli::cli_abort(
      c(
        "All elements in {.arg {error_arg}} must have names.",
        x = "Empty names at position{?s}: {empty}"
      ),
      call = error_call
    )
  }
}
