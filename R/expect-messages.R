#' Expectation: does code produce warnings or messages?
#'
#' Use `expect_message()` and `expect_warning()` to check if the messages or
#' warnings match the given regular expression.
#'
#' @inheritParams expect_that
#' @param regexp Regular expression to test against.
#'   * A character vector giving a regular expression that must match the
#'     message/warning
#'   * If `NULL`, the default, asserts that there should be a message/warning,
#'     but doesn't test for a specific value.
#'   * If `NA`, asserts that there shouldn't be any messages or warnings.
#' @inheritDotParams expect_match -object -regexp -info -label
#' @param all Do messages/warnings need to match the `regexp` (`TRUE`), or
#'   does only one need to match (`FALSE`)?
#' @family expectations
#' @return The first argument, invisibly.
#' @examples
#' # Messages ------------------------------------------------------------------
#'
#' f <- function(x) {
#'   if (x < 0) {
#'     message("*x* is already negative")
#'     return(x)
#'   }
#'
#'   -x
#' }
#' expect_message(f(-1))
#' expect_message(f(-1), "already negative")
#' expect_message(f(1), NA)
#'
#' # To test message and output, store results to a variable
#' expect_message(out <- f(-1), "already negative")
#' expect_equal(out, -1)
#'
#' # You can use the arguments of grepl to control the matching
#' expect_message(f(-1), "*x*", fixed = TRUE)
#' expect_message(f(-1), "NEGATIVE", ignore.case = TRUE)
#'
#' # Warnings ------------------------------------------------------------------
#' f <- function(x) {
#'   if (x < 0) {
#'     warning("*x* is already negative")
#'     return(x)
#'   }
#'   -x
#' }
#' expect_warning(f(-1))
#' expect_warning(f(-1), "already negative")
#' expect_warning(f(1), NA)
#'
#' # To test message and output, store results to a variable
#' expect_warning(out <- f(-1), "already negative")
#' expect_equal(out, -1)
#'
#' # You can use the arguments of grepl to control the matching
#' expect_warning(f(-1), "*x*", fixed = TRUE)
#' expect_warning(f(-1), "NEGATIVE", ignore.case = TRUE)
#'
#' @export
expect_message <- function(object,
                           regexp = NULL,
                           ...,
                           all = FALSE,
                           info = NULL,
                           label = NULL
                           ) {
  act <- quasi_capture(enquo(object), label, capture_messages)
  msg <- compare_messages(act$cap, act$lab, regexp = regexp, all = all, ...)
  expect(is.null(msg), msg, info = info)

  invisible(act$val)
}

#' @export
#' @rdname expect_message
expect_warning <- function(object,
                           regexp = NULL,
                           ...,
                           all = FALSE,
                           info = NULL,
                           label = NULL
                           ) {
  act <- quasi_capture(enquo(object), label, capture_warnings)
  msg <- compare_messages(
    act$cap, act$lab, regexp = regexp, all = all, ...,
    cond_type = "warnings"
  )
  expect(is.null(msg), msg, info = info)

  invisible(act$val)
}

# Helpers -----------------------------------------------------------------

compare_messages <- function(messages,
                             lab,
                             regexp = NA, ...,
                             all = FALSE,
                             cond_type = "messages") {
  bullets <- paste0("* ", messages, collapse = "\n")
  # Expecting no messages
  if (identical(regexp, NA)) {
    if (length(messages) > 0) {
      return(sprintf("%s generated %s:\n%s", lab, cond_type, bullets))
    } else {
      return()
    }
  }

  # Otherwise we're definitely expecting messages
  if (length(messages) == 0) {
    return(sprintf("%s did not produce any %s.", lab, cond_type))
  }

  if (is.null(regexp)) {
    return()
  }

  matched <- grepl(regexp, messages, ...)

  # all/any ok
  if ((all && all(matched)) || (!all && any(matched))) {
    return()
  }

  sprintf(
    "%s produced unexpected %s.\n%s\n%s",
    lab,
    cond_type,
    paste0("Expected match: ", encodeString(regexp)),
    paste0("Actual values:\n", bullets)
  )
}
