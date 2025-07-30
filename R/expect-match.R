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
#' @param fixed If `TRUE`, treats `regexp` as a string to be matched exactly
#'   (not a regular expressions). Overrides `perl`.
#' @inheritDotParams base::grepl -pattern -x -perl -fixed
#' @family expectations
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
expect_match <- function(
  object,
  regexp,
  perl = FALSE,
  fixed = FALSE,
  ...,
  all = TRUE,
  info = NULL,
  label = NULL
) {
  # Capture here to avoid environment-related messiness
  act <- quasi_label(enquo(object), label, arg = "object")
  stopifnot(is.character(regexp), length(regexp) == 1)

  stopifnot(is.character(act$val))
  if (length(object) == 0) {
    return(fail(sprintf("%s is empty.", act$lab), info = info))
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
expect_no_match <- function(
  object,
  regexp,
  perl = FALSE,
  fixed = FALSE,
  ...,
  all = TRUE,
  info = NULL,
  label = NULL
) {
  # Capture here to avoid environment-related messiness
  act <- quasi_label(enquo(object), label, arg = "object")
  stopifnot(is.character(regexp), length(regexp) == 1)
  stopifnot(is.character(act$val))

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

expect_match_ <- function(
  act,
  regexp,
  perl = FALSE,
  fixed = FALSE,
  ...,
  all = TRUE,
  info = NULL,
  label = NULL,
  negate = FALSE,
  trace_env = caller_env()
) {
  matches <- grepl(regexp, act$val, perl = perl, fixed = fixed, ...)
  condition <- if (negate) !matches else matches
  ok <- if (all) all(condition) else any(condition)

  if (ok) {
    return(pass(act$val))
  }

  text <- encodeString(act$val)
  if (length(act$val) == 1) {
    values <- paste0("Text: \"", text, "\"")
  } else {
    values <- paste0("Text:\n", paste0("* ", text, collapse = "\n"))
  }

  msg <- sprintf(
    if (negate) "%s does match %s %s.\n%s" else "%s does not match %s %s.\n%s",
    act$lab,
    if (fixed) "string" else "regexp",
    encodeString(regexp, quote = '"'),
    values
  )
  return(fail(msg, info = info, trace_env = trace_env))
}
