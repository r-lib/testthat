#' Does code return a vector with (given) names?
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
  act$names <- names(act$val)

  if (missing(expected)) {
    return(expect_has_names_(act))
  }

  exp <- quasi_label(enquo(expected), arg = "expected")

  exp$val <- normalise_names(exp$val, ignore.order, ignore.case)
  act_names <- normalise_names(act$names, ignore.order, ignore.case)

  if (ignore.order) {
    act <- labelled_value(act_names, act$lab)
    return(expect_setequal_(act, exp))
  } else {
    if (!identical(act$names, exp$val)) {
      msg <- sprintf(
        "Names of %s (%s) don't match %s",
        act$lab,
        paste0("'", act$names, "'", collapse = ", "),
        paste0("'", exp$val, "'", collapse = ", ")
      )
      return(fail(msg))
    }
  }

  pass(act$val)
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

expect_has_names_ <- function(act) {
  if (identical(act$names, NULL)) {
    msg <- sprintf("%s does not have names.", act$lab)
    return(fail(msg))
  }
  return(pass(act$val))
}
