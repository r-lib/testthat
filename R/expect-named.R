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
expect_named <- function(object, expected, ignore.order = FALSE,
                         ignore.case = FALSE, info = NULL,
                         label = NULL) {
  act <- quasi_label(enquo(object), label, arg = "object")
  act$names <- names(act$val)

  if (missing(expected)) {
    expect(
      !identical(act$names, NULL),
      sprintf("%s does not have names.", act$lab)
    )
  } else {
    exp_names <- normalise_names(expected, ignore.order, ignore.case)
    act$names <- normalise_names(act$names, ignore.order, ignore.case)

    expect(
      identical(act$names, exp_names),
      sprintf(
        "Names of %s (%s) don't match %s",
        act$lab,
        paste0("'", act$names, "'", collapse = ", "),
        paste0("'", exp_names, "'", collapse = ", ")
      ),
      info = info
    )
  }
  invisible(act$val)
}

normalise_names <- function(x, ignore.order = FALSE, ignore.case = FALSE) {
  if (is.null(x)) return()

  if (ignore.order) x <- sort(x)
  if (ignore.case) x <- tolower(x)

  x
}
