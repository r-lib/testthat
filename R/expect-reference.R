#' Does code return a reference to the expected object?
#'
#' `expect_reference()` compares the underlying memory addresses of
#' two symbols. It is for expert use only.
#'
#' @section 3rd edition:
#' `r lifecycle::badge("deprecated")`
#'
#' `expect_reference()` is deprecated in the third edition. If you know what
#' you're doing, and you really need this behaviour, just use `is_reference()`
#' directly: `expect_true(rlang::is_reference(x, y))`.
#'
#' @inheritParams expect_equal
#' @family expectations
#' @keywords internal
#' @export
expect_reference <- function(
  object,
  expected,
  info = NULL,
  label = NULL,
  expected.label = NULL
) {
  edition_deprecate(3, "expect_reference()")

  act <- quasi_label(enquo(object), label, arg = "object")
  exp <- quasi_label(enquo(expected), expected.label, arg = "expected")

  if (!is_reference(act$val, exp$val)) {
    msg <- sprintf("%s not a reference to %s.", act$lab, exp$lab)
    return(fail(msg, info = info))
  }
  pass(act$val)
}

# expect_reference() needs dev version of rlang
utils::globalVariables("is_reference")
