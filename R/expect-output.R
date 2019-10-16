#' Expectation: does code produce errors/warnings/messages?
#'
#' Use `expect_message()` and `expect_warning()` to match specified outputs.
#' Use `expect_error()` or `expect_condition()` to match individual errors or
#' conditions.
#'
#' Note that warnings are captured by a custom signal handler: this means
#' that `options(warn)` has no effect.
#'
#' @section Testing `message` vs `class`:
#' When checking that code generates an error, it's important to check that the
#' error is the one you expect. There are two ways to do this. The first
#' way is the simplest: you just provide a `regexp` that match some fragment
#' of the error message. This is easy, but fragile, because the test will
#' fail if the error message changes (even if its the same error).
#'
#' A more robust way is to test for the class of the error, if it has one.
#' You can learn more about custom conditions at
#' <https://adv-r.hadley.nz/conditions.html#custom-conditions>, but in
#' short, errors are S3 classes and you can generate a custom class and check
#' for it using `class` instead of `regexp`. Because this is a more reliable
#' check, you `expect_error()` will warn if the error has a custom class but
#' you are testing the message. Eliminate the warning by using `class` instead
#' of `regexp`.
#'
#' If you are using `expect_error()` to check that an error message is
#' formatted in such a way that it makes sense to a human, we now recommend
#' using [verify_output()] instead.
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

#' @name output-expectations
NULL


#' @export
#' @rdname output-expectations
expect_error <- function(object,
                         regexp = NULL,
                         class = NULL,
                         ...,
                         info = NULL,
                         label = NULL
                         ) {
  act <- quasi_capture(enquo(object), label, capture_error, entrace = TRUE)
  msg <- compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...)
  expect(is.null(msg), msg, info = info, trace = act$cap$trace)

  if (!is.null(act$cap)) {
    if (!simple_error(act$cap) && is.null(class) && !is.null(regexp)) {
      klass <- paste0(encodeString(class(act$cap), quote = '"'), collapse = ", ")
      warn(paste0(
        act$lab, " generated an S3 error and you are testing the error message.\n",
        "* The error has class = c(", klass, ")\n",
        "* Testing with `class` is more robust than testing with `regexp`.\n",
        "* Do you want `expect_error(..., class = \"", class(act$cap)[[1]], "\")`?"
      ))
    }
  }

  invisible(act$val %||% act$cap)
}

#' @export
#' @rdname output-expectations
expect_condition <- function(object,
                             regexp = NULL,
                             class = NULL,
                             ...,
                             info = NULL,
                             label = NULL
                             ) {
  act <- quasi_capture(enquo(object), label, capture_condition, entrace = TRUE)
  msg <- compare_condition(
    act$cap, act$lab, regexp = regexp, class = class, ...,
    cond_type = "condition"
  )
  expect(is.null(msg), msg, info = info, trace = act$cap$trace)

  invisible(act$val %||% act$cap)
}


#' @export
#' @rdname output-expectations
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
#' @rdname output-expectations
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

#' Expectation: is the code silent?
#'
#' Checks that the code produces no output, messages, or warnings.
#'
#' @inheritParams expect_error
#' @export
#' @examples
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
expect_silent <- function(object) {
  act <- quasi_capture(enquo(object), NULL, evaluate_promise)

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

#' Expectation: does code print output to the console?
#'
#' Test for output produced by `print()` or `cat()`. This is best used for
#' very simple output; for more complex cases use [verify_output()].
#'
#' @export
#' @inheritParams expect_error
#' @inheritParams capture_output
#' @inheritDotParams expect_match -object -regexp -info -label
#' @examples
#' str(mtcars)
#' expect_output(str(mtcars), "32 obs")
#' expect_output(str(mtcars), "11 variables")
#'
#' # You can use the arguments of grepl to control the matching
#' expect_output(str(mtcars), "11 VARIABLES", ignore.case = TRUE)
#' expect_output(str(mtcars), "$ mpg", fixed = TRUE)
expect_output <- function(object,
                          regexp = NULL,
                          ...,
                          info = NULL,
                          label = NULL,
                          width = 80
                          ) {
  act <- quasi_capture(enquo(object), label, capture_output, width = width)

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
    expect_match(act$cap, enc2native(regexp), ..., info = info, label = act$lab)
  }

  invisible(act$val)
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
        cnd_message(cond),
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

  message <- cnd_message(cond)

  ok_class <- is.null(class) || inherits(cond, class)
  ok_msg <- is.null(regexp) || grepl(regexp, message, ...)

  # All good
  if (ok_msg && ok_class) {
    return()
  }

  problems <- c(if (!ok_class) "class", if (!ok_msg) "message")

  details <- c(
    if (!ok_class) {
      sprintf(
        "Expected class: %s\nActual class:   %s\nMessage:        %s",
        paste0(class, collapse = "/"),
        paste0(class(cond), collapse = "/"),
        message
      )
    },
    if (!ok_msg) {
      sprintf(
        "Expected match: %s\nActual message: %s",
        encodeString(regexp, quote = '"'),
        encodeString(message, quote = '"')
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

# Disable rlang backtrace reminders so they don't interfere with
# expected error messages
cnd_message <- function(x) {
  withr::local_options(c(rlang_backtrace_on_error = "none"))
  conditionMessage(x)
}

simple_error <- function(x) {
  if (!inherits(x, "error")) {
    return(FALSE)
  }

  if (inherits(x, "simpleError")) {
    return(TRUE)
  }

  if (inherits(x, "Rcpp::exception")) {
    return(TRUE)
  }

  inherits_only(x, c("rlang_error", "error", "condition"))
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
