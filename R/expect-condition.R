#' Does code throw an error, warning, message, or other condition?
#'
#' @description
#' `expect_error()`, `expect_warning()`, `expect_message()`, and
#' `expect_condition()` check that code throws an error, warning, message,
#' or condition with a message that matches `regexp`, or a class that inherits
#' from `class`. See below for more details.
#'
#' New in the 3rd edition, if the code throws conditions that don't match
#' `regexp`/`class` they will bubble up outside of the expectation, so if
#' they're important you'll need to catch them with additional
#' `expect_message()`/`expect_warning()` calls, or if they're unimportant you
#' can ignore with [suppressMessages()]/[suppressWarnings()].
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
#' for it using `class` instead of `regexp`.
#'
#' If you are using `expect_error()` to check that an error message is
#' formatted in such a way that it makes sense to a human, we recommend
#' using [expect_snapshot()] instead.
#'
#' @export
#' @family expectations
#' @inheritParams expect_that
#' @param regexp Regular expression to test against.
#'   * A character vector giving a regular expression that must match the
#'     error message.
#'   * If `NULL`, the default, asserts that there should be a error,
#'     but doesn't test for a specific value.
#'   * If `NA`, asserts that there should be no errors.
#' @inheritDotParams expect_match -object -regexp -info -label -all
#' @param class Instead of supplying a regular expression, you can also supply
#'   a class name. This is useful for "classed" conditions.
#' @param all *DEPRECATED* If you need to test multiple warnings/messages
#'   you now need to use multiple calls to `expect_message()`/
#'   `expect_warning()`
#' @return If `regexp = NA`, the value of the first argument; otherwise
#'   the captured condition.
#' @examples
#' # Errors ------------------------------------------------------------------
#' f <- function() stop("My error!")
#' expect_error(f())
#' expect_error(f(), "My error!")
#'
#' # You can use the arguments of grepl to control the matching
#' expect_error(f(), "my error!", ignore.case = TRUE)
#'
#' # Note that `expect_error()` returns the error object so you can test
#' # its components if needed
#' err <- expect_error(rlang::abort("a", n = 10))
#' expect_equal(err$n, 10)
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
#' # Messages ------------------------------------------------------------------
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
expect_error <- function(object,
                         regexp = NULL,
                         class = NULL,
                         ...,
                         info = NULL,
                         label = NULL
                         ) {

  if (edition_get() >= 3) {
    expect_condition_matching("error", {{ object }},
      regexp = regexp,
      class = class,
      ...,
      info = info,
      label = label
    )
  } else {
    act <- quasi_capture(enquo(object), label, capture_error, entrace = TRUE)
    msg <- compare_condition_2e(act$cap, act$lab, regexp = regexp, class = class, ...)

    # Access error fields with `[[` rather than `$` because the
    # `$.Throwable` from the rJava package throws with unknown fields
    expect(is.null(msg), msg, info = info, trace = act$cap[["trace"]])
    invisible(act$val %||% act$cap)
  }
}


#' @export
#' @rdname expect_error
expect_warning <- function(object,
                           regexp = NULL,
                           class = NULL,
                           ...,
                           all = FALSE,
                           info = NULL,
                           label = NULL
                           ) {

  if (edition_get() >= 3) {
    if (!missing(all)) {
      warn("The `all` argument is deprecated")
    }

    expect_condition_matching("warning", {{ object }},
      regexp = regexp,
      class = class,
      ...,
      info = info,
      label = label
    )
  } else {
    act <- quasi_capture(enquo(object), label, capture_warnings)
    msg <- compare_messages(
      act$cap, act$lab, regexp = regexp, all = all, ...,
      cond_type = "warnings"
    )
    expect(is.null(msg), msg, info = info)

    invisible(act$val)
  }
}

#' @export
#' @rdname expect_error
expect_message <- function(object,
                           regexp = NULL,
                           class = NULL,
                           ...,
                           all = FALSE,
                           info = NULL,
                           label = NULL
                           ) {

  if (edition_get() >= 3) {
    expect_condition_matching("message", {{ object }},
      regexp = regexp,
      class = class,
      ...,
      info = info,
      label = label
    )
  } else {
    act <- quasi_capture(enquo(object), label, capture_messages)
    msg <- compare_messages(act$cap, act$lab, regexp = regexp, all = all, ...)
    expect(is.null(msg), msg, info = info)

    invisible(act$val)
  }
}

#' @export
#' @rdname expect_error
expect_condition <- function(object,
                             regexp = NULL,
                             class = NULL,
                             ...,
                             info = NULL,
                             label = NULL
                             ) {

  if (edition_get() >= 3) {
    expect_condition_matching("condition", {{ object }},
      regexp = regexp,
      class = class,
      ...,
      info = info,
      label = label
    )
  } else {
    act <- quasi_capture(enquo(object), label, capture_condition, entrace = TRUE)
    msg <- compare_condition_2e(
      act$cap, act$lab, regexp = regexp, class = class, ...,
      cond_type = "condition"
    )
    expect(is.null(msg), msg, info = info, trace = act$cap[["trace"]])

    invisible(act$val %||% act$cap)
  }
}

expect_condition_matching <- function(base_class,
                                      object,
                                      regexp = NULL,
                                      class = NULL,
                                      ...,
                                      info = NULL,
                                      label = NULL) {
  ellipsis::check_dots_used(action = warn)

  act <- quasi_capture(
    enquo(object), label, capture_matching_condition,
    matches = cnd_matcher(class %||% base_class, regexp, ...)
  )

  expected <- !identical(regexp, NA)
  msg <- compare_condition_3e(base_class, act$cap, act$lab, expected)

  # Access error fields with `[[` rather than `$` because the
  # `$.Throwable` from the rJava package throws with unknown fields
  expect(is.null(msg), msg, info = info, trace = act$cap[["trace"]])

  invisible(act$val %||% act$cap)
}

# -------------------------------------------------------------------------

cnd_matcher <- function(class, pattern = NULL, ...) {
  if (!is_string(class)) {
    abort("`class` must be a single string")
  }
  if (!is_string(pattern) && !is.null(pattern) && !isNA(pattern)) {
    abort("`pattern` must be a single string, NULL, or NA")
  }

  if (is.null(pattern) || isNA(pattern)) {
    function(cnd) {
      inherits(cnd, class)
    }
  } else {
    function(cnd) {
      inherits(cnd, class) && grepl(pattern, conditionMessage(cnd), ...)
    }
  }
}

capture_matching_condition <- function(expr, matches) {
  matched <- NULL
  tl <- current_env()

  withCallingHandlers(expr, condition = function(cnd) {
    if (!is.null(matched) || !matches(cnd)) {
      return()
    }

    if (can_entrace(cnd)) {
      cnd <- cnd_entrace(cnd)
    }
    matched <<- cnd

    if (inherits(cnd, "message") || inherits(cnd, "warning")) {
      cnd_muffle(cnd)
    } else if (inherits(cnd, "error") || inherits(cnd, "skip")) {
      return_from(tl, cnd)
    }
  })

  matched
}

# Helpers -----------------------------------------------------------------

compare_condition_3e <- function(cond_type, cond, lab, expected) {
  if (expected) {
    if (is.null(cond)) {
      sprintf("%s did not throw the expected %s.", lab, cond_type)
    } else {
      NULL
    }
  } else {
    if (!is.null(cond)) {
      sprintf(
        "%s threw an unexpected %s.\nMessage: %s\nClass:   %s",
        lab,
        cond_type,
        cnd_message(cond),
        paste(class(cond), collapse = "/")
      )
    } else {
      NULL
    }
  }
}

compare_condition_2e <- function(cond, lab, regexp = NULL, class = NULL, ...,
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

# Disable rlang backtrace reminders so they don't interfere with
# expected error messages
cnd_message <- function(x) {
  withr::local_options(c(rlang_backtrace_on_error = "none"))
  conditionMessage(x)
}
