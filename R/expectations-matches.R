#' Does a string match a regular expression?
#'
#' @details
#' `expect_match()` is a wrapper around [grepl()]. See its documentation for
#' more detail about the individual arguments. `expect_no_match()` provides
#' the complementary case, checking that a string *does not* match a regular
#' expression.
#'
#' @inheritParams expect_that
#' @inheritParams base::grepl
#' @param regexp Regular expression to test against.
#' @param all Should all elements of actual value match `regexp` (TRUE),
#'   or does only one need to match (FALSE).
#' @inheritDotParams base::grepl -pattern -x -perl -fixed
#' @family expectations
#' @keywords internal
#' @export
#' @examples
#' expect_match("Testing is fun", "fun")
#' expect_match("Testing is fun", "f.n")
#' expect_no_match("Testing is fun", "horrible")
#'
#' \dontrun{
#' expect_match("Testing is fun", "horrible")
#'
#' # Zero-length inputs always fail
#' expect_match(character(), ".")
#' }
expect_match <- function(object, regexp, perl = FALSE, fixed = FALSE, ..., all = TRUE,
                         info = NULL, label = NULL) {
  # Capture here to avoid environment-related messiness
  act <- quasi_label(enquo(object), label, arg = "object")
  stopifnot(is.character(regexp), length(regexp) == 1)

  stopifnot(is.character(act$val))
  if (length(object) == 0) {
    fail(sprintf("%s is empty.", act$lab), info = info)
  }

  expect_match_(
    act = act,
    regexp = regexp,
    perl = perl,
    fixed = fixed,
    ...,
    all = all,
    info = info,
    label = label,
    negate = FALSE
  )
}

#' @describeIn expect_match Check that a string doesn't match a regular
#'   expression.
#' @export
expect_no_match <- function(object, regexp, perl = FALSE, fixed = FALSE, ..., all = TRUE,
                            info = NULL, label = NULL) {
  # Capture here to avoid environment-related messiness
  act <- quasi_label(enquo(object), label, arg = "object")
  stopifnot(is.character(regexp), length(regexp) == 1)

  stopifnot(is.character(act$val))
  if (length(object) == 0) {
    fail(sprintf("%s is empty.", act$lab), info = info)
  }

  expect_match_(
    act = act,
    regexp = regexp,
    perl = perl,
    fixed = fixed,
    ...,
    all = all,
    info = info,
    label = label,
    negate = TRUE
  )
}

expect_match_ <- function(act, regexp, perl = FALSE, fixed = FALSE, ..., all = TRUE,
                         info = NULL, label = NULL, negate = FALSE) {

  matches <- grepl(regexp, act$val, perl = perl, fixed = fixed, ...)
  condition <- if (negate) !matches else matches
  escape <- if (fixed) identity else escape_regex

  if (length(act$val) == 1) {
    values <- paste0("Actual value: \"", escape(encodeString(act$val)), "\"")
  } else {
    values <- paste0(
      "Actual values:\n",
      paste0("* ", escape(encodeString(act$val)), collapse = "\n")
    )
  }
  expect(
    if (all) all(condition) else any(condition),
    sprintf(
      if (negate) "%s does match %s.\n%s" else "%s does not match %s.\n%s",
      escape(act$lab),
      encodeString(regexp, quote = '"'),
      values
    ),
    info = info
  )
  invisible(act$val)
}
