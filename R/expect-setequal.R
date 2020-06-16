#' Expectation: do two vectors contain the same values?
#'
#' * `expect_setequal(x, y)` tests that every element of `x` occurs in `y`,
#'    and that every element of `y` occurs in `x`.
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
    succeed()
    return(invisible(act$val))
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
  } else {
    expect_equal(act$val[exp_nms], exp$val)
  }

  invisible(act$val)
}

check_names_ok <- function(x, label) {
  if (anyDuplicated(x)) {
    stop("Duplicate names in `", label, "`: ", unique(x[duplicated(x)]))
  }
  if (any(x == "")) {
    stop("All elements in `", label, "` must be named")
  }
}
