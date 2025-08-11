#' Do you expect a string to match this pattern?
#'
#' @details
#' `expect_match()` checks if a character vector matches a regular expression,
#' powered by [grepl()].
#'
#' `expect_no_match()` provides the complementary case, checking that a
#' character vector *does not* match a regular expression.
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
#' show_failure(expect_match("Testing is fun", "horrible"))
#' show_failure(expect_match("Testing is fun", "horrible", fixed = TRUE))
#'
#' # Zero-length inputs always fail
#' show_failure(expect_match(character(), "."))
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
  act <- quasi_label(enquo(object), label)

  check_character(object)
  check_string(regexp)
  check_bool(perl)
  check_bool(fixed)
  check_bool(all)

  if (length(object) == 0) {
    return(fail(sprintf("Expected %s to not be empty.", act$lab), info = info))
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
  act <- quasi_label(enquo(object), label)
  check_character(object)
  check_string(regexp)
  check_bool(perl)
  check_bool(fixed)
  check_bool(all)

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
  title = "text",
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
    which <- ""
    values <- text
  } else {
    bullet <- ifelse(
      condition,
      cli::col_green(cli::symbol$tick),
      cli::col_red(cli::symbol$cross)
    )
    values <- paste0(bullet, " ", text, collapse = "\n")
    which <- if (all) "every element of " else "some element of "
  }
  match <- if (negate) "not to match" else "to match"

  exp_msg <- sprintf(
    "Expected %s%s %s %s %s.",
    which,
    act$lab,
    match,
    if (fixed) "string" else "regexp",
    encodeString(regexp, quote = '"')
  )
  act_msg <- c(paste0("Actual ", title, ':'), text)
  return(fail(c(exp_msg, act_msg), info = info, trace_env = trace_env))
}
