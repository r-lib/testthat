#' Expectation: does code produce warnings or messages?
#'
#' `expect_message()` and `expect_warning()` check if _any_ messages or
#' warning (respectively) matches the given pattern (regular expression) or
#' class.
#'
#' @inheritParams expect_that
#' @param regexp Regular expression to test against.
#'   * A character vector giving a regular expression that must match the
#'     message/warning
#'   * If `NULL`, the default, asserts that there should be a message/warning,
#'     but doesn't test for a specific value.
#'   * If `NA`, asserts that there shouldn't be any messages or warnings.
#' @inheritDotParams expect_match -object -regexp -info -label
#' @param class Instead of supplying a regular expression, you can also supply
#'   a class name. This is useful for "classed" conditions. See
#'   discussion in [expect_error()] for details.
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
                           class = NULL,
                           ...,
                           all = FALSE,
                           info = NULL,
                           label = NULL
                           ) {
  ellipsis::check_dots_used(action = warn)

  act <- quasi_capture(enquo(object), label, capture_messages, message_only = FALSE)
  msg <- compare_conditions(
    act$cap, act$lab,
    regexp = regexp,
    class = class,
    all = all,
    ...,
    cond_type = "a message"
  )
  expect(is.null(msg), msg, info = info)

  invisible(act$val)
}

#' @export
#' @rdname expect_message
expect_warning <- function(object,
                           regexp = NULL,
                           class = NULL,
                           ...,
                           all = FALSE,
                           info = NULL,
                           label = NULL
                           ) {
  ellipsis::check_dots_used(action = warn)

  act <- quasi_capture(enquo(object), label, capture_warnings, message_only = FALSE)
  msg <- compare_conditions(
    act$cap, act$lab,
    regexp = regexp,
    class = class,
    all = all,
    ...,
    cond_type = "a warning"
  )
  expect(is.null(msg), msg, info = info)

  invisible(act$val)
}

# Helpers -----------------------------------------------------------------

compare_conditions <- function(conds, lab, regexp = NULL, class = NULL, ...,
                               all = FALSE,
                               cond_type = "condition") {

  if (identical(regexp, NA)) {
    if (length(conds) > 0) {
      messages <- get_messages(conds)
      bullets <- paste0("* ", messages, collapse = "\n")
      return(sprintf("%s generated %s:\n%s", lab, cond_type, bullets))
    } else {
      return()
    }
  } else if (length(conds) == 0) {
    return(sprintf("%s did not produce %s.", lab, cond_type))
  }

  comp <- lapply(conds, compare_condition,
    lab = lab,
    regexp = regexp,
    class = class,
    ...,
    cond_type = cond_type
  )

  ok <- vapply(comp, is.null, logical(1))

  if ((all && all(ok)) || (!all && any(ok))) {
    return()
  }

  paste0(unlist(comp[!ok]), collapse = "\n\n")
}
