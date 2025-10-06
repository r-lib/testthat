#' Do you expect a vector with (these) names?
#'
#' You can either check for the presence of names (leaving `expected`
#' blank), specific names (by supplying a vector of names), or absence of
#' names (with `NULL`).
#'
#' @inheritParams expect_that
#' @param expected Character vector of expected names. Leave missing to
#'   match any names. Use `NULL` to check for absence of names.
#' @param ignore.order If `TRUE`, sorts names before comparing to
#'   ignore the effect of order.
#' @param ignore.case If `TRUE`, lowercases all names to ignore the
#'   effect of case.
#' @family expectations
#' @export
#' @examples
#' x <- c(a = 1, b = 2, c = 3)
#' expect_named(x)
#' expect_named(x, c("a", "b", "c"))
#'
#' # Use options to control sensitivity
#' expect_named(x, c("B", "C", "A"), ignore.order = TRUE, ignore.case = TRUE)
#'
#' # Can also check for the absence of names with NULL
#' z <- 1:4
#' expect_named(z, NULL)
expect_named <- function(
  object,
  expected,
  ignore.order = FALSE,
  ignore.case = FALSE,
  info = NULL,
  label = NULL
) {
  check_bool(ignore.order)
  check_bool(ignore.case)

  act <- quasi_label(enquo(object), label)

  if (missing(expected)) {
    act_names <- names(act$val)
    if (is.null(act_names)) {
      msg <- sprintf("Expected %s to have names.", act$lab)
      fail(msg)
    } else {
      pass()
    }
  } else {
    exp <- quasi_label(enquo(expected), arg = "expected")

    exp$val <- normalise_names(exp$val, ignore.order, ignore.case)
    act_names <- labelled_value(
      normalise_names(names(act$val), ignore.order, ignore.case),
      paste0("names of ", act$lab)
    )

    if (ignore.order) {
      expect_setequal_(act_names, exp)
    } else {
      expect_waldo_equal_("equal", act_names, exp)
    }
  }

  invisible(act$val)
}

normalise_names <- function(x, ignore.order = FALSE, ignore.case = FALSE) {
  if (is.null(x)) {
    return()
  }

  if (ignore.order) {
    x <- sort(x)
  }
  if (ignore.case) {
    x <- tolower(x)
  }

  x
}
