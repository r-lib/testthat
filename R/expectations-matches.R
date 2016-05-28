#' Expectation: does string/output/message/warning/error match a regular expression?
#'
#' @inheritParams expect_that
#' @param regexp Regular expression to test against.
#' @param all Should all elements of actual value match \code{regexp} (TRUE),
#'    or does only one need to match (FALSE)
#' @param ... Additional arguments passed on to \code{\link{grepl}}, e.g.
#'   \code{ignore.case} or \code{fixed}.
#' @family expectations
#' @export
#' @examples
#' expect_match("Testing is fun", "fun")
#' expect_match("Testing is fun", "f.n")
#'
#' \dontrun{
#' expect_match("Testing is fun", "horrible")
#'
#' # Zero-length inputs always fail
#' expect_match(character(), ".")
#' }
expect_match <- function(object, regexp, ..., all = TRUE,
                         info = NULL, label = NULL) {
  stopifnot(is.character(regexp), length(regexp) == 1)
  label <- make_label(object, label)

  stopifnot(is.character(object))
  if (length(object) == 0) {
    fail(sprintf("%s is empty.", label))
  }

  matches <- grepl(regexp, object, ...)

  if (length(object) == 1) {
    values <- paste0("Actual value: \"", encodeString(object), "\"")
  } else {
    values <- paste0("Actual values:\n",
      paste0("* ", encodeString(object), collapse = "\n"))
  }
  expect(
    if (all) all(matches) else any(matches),
    sprintf(
      "%s does not match %s.\n%s",
      label,
      encodeString(regexp, quote = '"'),
      values
    ),
    info = info
  )
  invisible(object)
}
