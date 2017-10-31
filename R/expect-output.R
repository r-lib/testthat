#' Expectation: does code produce output/message/warning/error?
#'
#' Use `expect_output()`, `expect_message()` and `expect_warning()` to
#' match specified outputs. Use `expect_error()` or `expect_condition()` to
#' match individual errors or conditions. Use `expect_silent()` to assert that
#' there should be no output of any type.
#'
#' Note that warnings are captured by a custom signal handler: this means
#' that `options(warn)` has no effect.
#'
#' @inheritParams expect_that
#' @inheritDotParams expect_match -object -regexp -info -label
#' @param regexp regular expression to test against.
#'
#'   If `NULL`, the default, asserts that there should be an output,
#'   a messsage, a warning, or an error, but does not test for specific value.
#'
#'   If `NA`, asserts that there should be no output, messages, warnings,
#'   or errors.
#' @param class Instead of supplying a regular expression, you can also supply
#'   a class name. This is useful for "classed" conditions.
#' @param all For messages and warnings, do all need to match the `regexp`
#'    (TRUE), or does only one need to match (FALSE)
#' @family expectations
#' @return The first argument, invisibly. If `expect_error()` captures an
#'   error, that is returned instead of the value.
#' @examples
#' # Output --------------------------------------------------------------------
#' str(mtcars)
#' expect_output(str(mtcars), "32 obs")
#' expect_output(str(mtcars), "11 variables")
#'
#' # You can use the arguments of grepl to control the matching
#' expect_output(str(mtcars), "11 VARIABLES", ignore.case = TRUE)
#' expect_output(str(mtcars), "$ mpg", fixed = TRUE)
#'
#' # Messages ------------------------------------------------------------------
#'
#' f <- function(x) {
#'   if (x < 0) message("*x* is already negative")
#'   -x
#' }
#' expect_message(f(-1))
#' expect_message(f(-1), "already negative")
#' expect_message(f(1), NA)
#'
#' # You can use the arguments of grepl to control the matching
#' expect_message(f(-1), "*x*", fixed = TRUE)
#' expect_message(f(-1), "NEGATIVE", ignore.case = TRUE)
#'
#' # Warnings --------------------------------------------------------------------
#' f <- function(x) {
#'   if (x < 0) warning("*x* is already negative")
#'   -x
#' }
#' expect_warning(f(-1))
#' expect_warning(f(-1), "already negative")
#' expect_warning(f(1), NA)
#'
#' # You can use the arguments of grepl to control the matching
#' expect_warning(f(-1), "*x*", fixed = TRUE)
#' expect_warning(f(-1), "NEGATIVE", ignore.case = TRUE)
#'
#' # Errors --------------------------------------------------------------------
#' f <- function() stop("My error!")
#' expect_error(f())
#' expect_error(f(), "My error!")
#'
#' # You can use the arguments of grepl to control the matching
#' expect_error(f(), "my error!", ignore.case = TRUE)
#'
#' # Silent --------------------------------------------------------------------
#' expect_silent("123")
#'
#' f <- function() {
#'   message("Hi!")
#'   warning("Hey!!")
#'   print("OY!!!")
#' }
#' \dontrun{
#' expect_silent(f())
#' }

#' @name output-expectations
NULL

#' @export
#' @rdname output-expectations
expect_output <- function(object, regexp = NULL, ..., info = NULL, label = NULL) {
  act <- quasi_capture(enquo(object), capture_output, label = label)

  if (identical(regexp, NA)) {
    expect(
      identical(act$cap, ""),
      sprintf("%s produced output.\n%s", act$lab, encodeString(act$cap)),
      info = info
    )
  } else if (is.null(regexp) || identical(act$cap, "")) {
    expect(
      !identical(act$cap, ""),
      sprintf("%s produced no output", act$lab),
      info = info
    )
  } else {
    expect_match(act$cap, regexp, ..., info = info, label = act$lab)
  }

  invisible(act$val)
}


#' @export
#' @rdname output-expectations
expect_error <- function(object,
                         regexp = NULL,
                         class = NULL,
                         ...,
                         info = NULL,
                         label = NULL) {
  act <- quasi_capture(enquo(object), capture_error, label = label)
  msg <- compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...)
  expect(is.null(msg), msg, info = info)

  invisible(act$val %||% act$err)
}

#' @export
#' @rdname output-expectations
expect_condition <- function(object,
                             regexp = NULL,
                             class = NULL,
                             ...,
                             info = NULL,
                             label = NULL) {
  act <- quasi_capture(enquo(object), capture_condition, label = label)
  msg <- compare_condition(
    act$cap, act$lab, regexp = regexp, class = class, ...,
    cond_type = "condition"
  )
  expect(is.null(msg), msg, info = info)

  invisible(act$val %||% act$err)
}


#' @export
#' @rdname output-expectations
expect_message <- function(object, regexp = NULL, ..., all = FALSE,
                           info = NULL, label = NULL) {
  act <- quasi_capture(enquo(object), capture_messages, label = label)
  msg <- compare_messages(act$cap, act$lab, regexp = regexp, all = all, ...)
  expect(is.null(msg), msg, info = info)

  invisible(act$val)
}

#' @export
#' @rdname output-expectations
expect_warning <- function(object, regexp = NULL, ..., all = FALSE,
                           info = NULL, label = NULL) {
  act <- quasi_capture(enquo(object), capture_warnings, label = label)
  msg <- compare_messages(
    act$cap, act$lab, regexp = regexp, all = all, ...,
    cond_type = "warnings"
  )
  expect(is.null(msg), msg, info = info)

  invisible(act$val)
}

#' @export
#' @rdname output-expectations
expect_silent <- function(object) {
  act <- quasi_capture(enquo(object), evaluate_promise)

  outputs <- c(
    if (!identical(act$cap$output, "")) "output",
    if (length(act$cap$warnings) > 0) "warnings",
    if (length(act$cap$messages) > 0) "messages"
  )

  expect(
    length(outputs) == 0,
    sprintf("%s produced %s.", act$lab, paste(outputs, collapse = ", "))
  )

  invisible(act$cap$result)
}



# Helpers -----------------------------------------------------------------

compare_condition <- function(cond, lab, regexp = NULL, class = NULL, ...,
                              cond_type = "error") {

  # Expecting no condition
  if (identical(regexp, NA)) {
    if (!is.null(cond)) {
      return(sprintf(
        "%s threw an %s.\nMessage: %s\nClass:   %s",
        lab,
        cond_type,
        cond$message,
        paste(class(cond), collapse = "/")
      ))
    } else {
      return()
    }
  }

  # Otherwise we're definitely expecting a condition
  if (is.null(cond)) {
    return(sprintf("%s did not throw an %s.", lab, cond_type))
  }

  ok_class <- is.null(class) || inherits(cond, class)
  ok_msg <- is.null(regexp) || grepl(regexp, cond$message, ...)

  # All good
  if (ok_msg && ok_class) {
    return()
  }

  problems <- c(if (!ok_class) "class", if (!ok_msg) "message")

  details <- c(
    if (!ok_class) {
      sprintf(
        "Expected class: %s\nActual class:   %s",
        paste0(class, collapse = "/"),
        paste0(class(cond), collapse = "/")
      )
    },
    if (!ok_msg) {
      sprintf(
        "Expected match: %s\nActual message: %s",
        encodeString(regexp, quote = '"'),
        encodeString(cond$message, quote = '"')
      )
    }
  )

  sprintf(
    "%s threw an %s with unexpected %s.\n%s",
    lab,
    cond_type,
    paste(problems, collapse = " and "),
    paste(details, collapse = "\n")
  )
}


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
