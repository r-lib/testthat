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
    fail(
      sprintf("Expected %s to have at least one element.", act$lab),
      info = info
    )
  } else {
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

  invisible(act$val)
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
  invisible(act$val)
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

  if (!ok) {
    values <- show_text(act$val, condition)
    if (length(act$val) == 1) {
      which <- ""
    } else {
      which <- if (all) "every element of " else "some element of "
    }
    match <- if (negate) "not to match" else "to match"

    msg_exp <- sprintf(
      "Expected %s%s %s %s %s.",
      which,
      act$lab,
      match,
      if (fixed) "string" else "regexp",
      encodeString(regexp, quote = '"')
    )
    msg_act <- c(paste0("Actual ", title, ':'), values)
    fail(c(msg_exp, msg_act), info = info, trace_env = trace_env)
  } else {
    pass()
  }
}

# Adapted from print.ellmer_prompt
show_text <- function(x, matches = NULL, max_items = 20, max_lines = NULL) {
  matches <- matches %||% rep(TRUE, length(x))
  max_lines <- max_lines %||% (max_items * 25)

  n <- length(x)
  n_extra <- length(x) - max_items
  if (n_extra > 0) {
    x <- x[seq_len(max_items)]
    matches <- matches[seq_len(max_items)]
  }

  if (length(x) == 0) {
    return(character())
  }

  bar <- if (cli::is_utf8_output()) "\u2502" else "|"

  id <- ifelse(
    matches,
    cli::col_green(cli::symbol$tick),
    cli::col_red(cli::symbol$cross)
  )

  indent <- paste0(id, " ", bar, " ")
  exdent <- paste0("  ", cli::col_grey(bar), " ")

  x[is.na(x)] <- cli::col_red("<NA>")
  x <- paste0(indent, x)
  x <- gsub("\n", paste0("\n", exdent), x)

  lines <- strsplit(x, "\n")
  ids <- rep(seq_along(x), lengths(lines))
  first <- c(TRUE, ids[-length(ids)] != ids[-1])
  lines <- unlist(lines)

  if (length(lines) > max_lines) {
    if (first[max_lines + 1]) {
      max_lines <- max_lines - 1
    }

    lines <- lines[seq_len(max_lines)]
    lines <- c(lines, paste0(exdent, "..."))
    n_extra <- n - ids[max_lines - 1]
  }

  if (n_extra > 0) {
    lines <- c(lines, paste0("... and ", n_extra, " more.\n"))
  }
  lines
}
