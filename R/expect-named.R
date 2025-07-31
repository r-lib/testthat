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
  act <- quasi_label(enquo(object), label, arg = "object")
  act$names <- names(act$val)

  if (missing(expected)) {
    if (identical(act$names, NULL)) {
      msg <- sprintf("%s does not have names.", act$lab)
      return(fail(msg))
    }
  } else {
    exp <- quasi_label(enquo(expected), arg = "expected")
    exp$val <- normalise_names(exp$val, ignore.order, ignore.case)
    act$names <- normalise_names(act$names, ignore.order, ignore.case)

    if (ignore.order) {
      act_miss <- unique(act$names[!act$names %in% exp$val])
      exp_miss <- unique(exp$val[!exp$val %in% act$names])

      expect(
        length(exp_miss) == 0 && length(act_miss) == 0,
        paste0(
          "Names of ",
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
        )
      )
    } else {
      expect(
        identical(act$names, exp$val),
        sprintf(
          "Names of %s (%s) don't match %s",
          act$lab,
          paste0("'", act$names, "'", collapse = ", "),
          paste0("'", exp$val, "'", collapse = ", ")
        ),
        info = info
      )
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
