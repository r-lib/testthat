#' Expectation: does string match a regular expression?
#'
#' @inheritParams expect_that
#' @inheritParams base::grepl
#' @param regexp Regular expression to test against.
#' @param all Should all elements of actual value match `regexp` (TRUE),
#'    or does only one need to match (FALSE)
#' @inheritDotParams base::grepl -pattern -x -perl -fixed
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
expect_match <- function(object, regexp, perl = FALSE, fixed = FALSE, ..., all = TRUE,
                         info = NULL, label = NULL) {

  if (fixed) escape <- identity
  else escape <- escape_regex

  stopifnot(is.character(regexp), length(regexp) == 1)
  label <- make_label(object, label)

  stopifnot(is.character(object))
  if (length(object) == 0) {
    fail(sprintf("%s is empty.", label))
  }

  matches <- grepl(regexp, object, perl = perl, fixed = fixed, ...)

  if (length(object) == 1) {
    values <- paste0("Actual value: \"", escape(encodeString(object)), "\"")
  } else {
    values <- paste0("Actual values:\n",
      paste0("* ", escape(encodeString(object)), collapse = "\n"))
  }
  expect(
    if (all) all(matches) else any(matches),
    sprintf(
      "%s does not match %s.\n%s",
      escape(label),
      encodeString(regexp, quote = '"'),
      values
    ),
    info = info
  )
  invisible(object)
}
