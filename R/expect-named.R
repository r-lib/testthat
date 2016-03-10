#' Expectation: does object have names?
#'
#' You can either check for the presence of names (leaving \code{expected}
#' blank), specific names (by suppling a vector of names), or absence of
#' names (with \code{NULL}).
#'
#' @inheritParams expect_that
#' @param expected Character vector of expected names. Leave missing to
#'   match any names. Use \code{NULL} to check for absence of names.
#' @param ignore.order If \code{TRUE}, sorts names before comparing to
#'   ignore the effect of order.
#' @param ignore.case If \code{TRUE}, lowercases all names to ignore the
#'   effect of case.
#' @param ... Other arguments passed onto \code{has_names}.
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
expect_named <- function(object, expected, ignore.order = FALSE,
                         ignore.case = FALSE, info = NULL,
                         label = NULL) {

  lab <- make_label(object, label)

  if (missing(expected)) {
    expect(
      !identical(names(object), NULL),
      sprintf("%s does not have names.", lab)
    )
  } else {
    exp <- normalise_names(expected, ignore.order, ignore.case)
    act <- normalise_names(names(object), ignore.order, ignore.case)

    expect(
      identical(exp, act),
      sprintf("Names of %s (%s) don't match %s",
        lab,
        paste0("'", act, "'", collapse = ", "),
        paste0("'", exp, "'", collapse = ", ")
      ),
      info = info
    )
  }
  invisible(object)
}

normalise_names <- function(x, ignore.order = FALSE, ignore.case = FALSE) {
  if (is.null(x)) return()

  if (ignore.order) x <- sort(x)
  if (ignore.case)  x <- tolower(x)

  x
}
