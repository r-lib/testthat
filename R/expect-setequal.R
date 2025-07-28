#' Does code return a vector containing the expected values?
#'
#' * `expect_setequal(x, y)` tests that every element of `x` occurs in `y`,
#'    and that every element of `y` occurs in `x`.
#' * `expect_contains(x, y)` tests that `x` contains every element of `y`
#'   (i.e. `y` is a subset of `x`).
#' * `expect_in(x, y)` tests every element of `x` is in `y`
#'   (i.e. `x` is a subset of `y`).
#' * `expect_mapequal(x, y)` tests that `x` and `y` have the same names, and
#'    that `x[names(y)]` equals `y`.
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
  act <- quasi_label(enquo(object), arg = "object")
  exp <- quasi_label(enquo(expected), arg = "expected")

  if (!is_vector(act$val) || !is_vector(exp$val)) {
    abort("`object` and `expected` must both be vectors")
  }

  if (!is.null(names(act$val)) && !is.null(names(exp$val))) {
    warn("expect_setequal() ignores names")
  }

  act_miss <- unique(act$val[!act$val %in% exp$val])
  exp_miss <- unique(exp$val[!exp$val %in% act$val])

  if (length(exp_miss) || length(act_miss)) {
    fail(paste0(
      act$lab,
      " (`actual`) and ",
      exp$lab,
      " (`expected`) don't have the same values.\n",
      if (length(act_miss)) {
        paste0("* Only in `actual`: ", values(act_miss), "\n")
      },
      if (length(exp_miss)) {
        paste0("* Only in `expected`: ", values(exp_miss), "\n")
      }
    ))
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
  act <- quasi_label(enquo(object), arg = "object")
  exp <- quasi_label(enquo(expected), arg = "expected")

  if (!is_vector(act$val) || !is_vector(exp$val)) {
    abort("`object` and `expected` must both be vectors")
  }

  # Length-0 vectors are OK whether named or unnamed.
  if (length(act$val) == 0 && length(exp$val) == 0) {
    warn("`object` and `expected` are empty lists")
    return(pass(act$val))
  }

  act_nms <- names(act$val)
  exp_nms <- names(exp$val)

  check_names_ok(act_nms, "object")
  check_names_ok(exp_nms, "expected")

  if (!setequal(act_nms, exp_nms)) {
    act_miss <- setdiff(exp_nms, act_nms)
    if (length(act_miss) > 0) {
      vals <- paste0(encodeString(act_miss, quote = '"'), ", ")
      fail(paste0("Names absent from `object`: ", vals))
    }

    exp_miss <- setdiff(act_nms, exp_nms)
    if (length(exp_miss) > 0) {
      vals <- paste0(encodeString(exp_miss, quote = '"'), ", ")
      fail(paste0("Names absent from `expected`: ", vals))
    }

    pass(act$val)
  } else {
    expect_equal(act$val[exp_nms], exp$val)
  }
}

check_names_ok <- function(x, label) {
  if (anyDuplicated(x)) {
    stop("Duplicate names in `", label, "`: ", unique(x[duplicated(x)]))
  }
  if (any(x == "")) {
    stop("All elements in `", label, "` must be named")
  }
}

#' @export
#' @rdname expect_setequal
expect_contains <- function(object, expected) {
  act <- quasi_label(enquo(object), arg = "object")
  exp <- quasi_label(enquo(expected), arg = "expected")

  if (!is_vector(act$val) || !is_vector(exp$val)) {
    abort("`object` and `expected` must both be vectors")
  }

  exp_miss <- !exp$val %in% act$val

  if (any(exp_miss)) {
    fail(paste0(
      act$lab,
      " (`actual`) doesn't fully contain all the values in ",
      exp$lab,
      " (`expected`).\n",
      paste0("* Missing from `actual`: ", values(exp$val[exp_miss]), "\n"),
      paste0("* Present in `actual`:   ", values(act$val), "\n")
    ))
  }

  pass(act$val)
}

#' @export
#' @rdname expect_setequal
expect_in <- function(object, expected) {
  act <- quasi_label(enquo(object), arg = "object")
  exp <- quasi_label(enquo(expected), arg = "expected")

  if (!is_vector(act$val) || !is_vector(exp$val)) {
    abort("`object` and `expected` must both be vectors")
  }

  act_miss <- !act$val %in% exp$val

  if (any(act_miss)) {
    fail(paste0(
      act$lab,
      " (`actual`) isn't fully contained within ",
      exp$lab,
      " (`expected`).\n",
      paste0("* Missing from `expected`: ", values(act$val[act_miss]), "\n"),
      paste0("* Present in `expected`:   ", values(exp$val), "\n")
    ))
  }

  pass(act$val)
}
