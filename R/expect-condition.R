#' Expectation: does code throw error or other condition?
#'
#' `expect_error()` and `expect_condition()` check that code throws an error
#' or condition with a message that matches `regexp`, or a class that inherits
#' from `class`. See below for more details.
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
#' of `regexp`. Alternatively, if you think the warning is a false positive,
#' use `class = "error"` to suppress it for any input.
#'
#' If you are using `expect_error()` to check that an error message is
#' formatted in such a way that it makes sense to a human, we now recommend
#' using [verify_output()] instead.
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
#' @inheritDotParams expect_match -object -regexp -info -label
#' @param class Instead of supplying a regular expression, you can also supply
#'   a class name. This is useful for "classed" conditions.
#' @return If `regexp = NA`, the value of the first argument; otherwise
#'   the captured condition.
#' @examples
#' f <- function() stop("My error!")
#' expect_error(f())
#' expect_error(f(), "My error!")
#'
#' # You can use the arguments of grepl to control the matching
#' expect_error(f(), "my error!", ignore.case = TRUE)
#'
#' # If you are working with classed conditions, it's better to test for
#' # the class name, rather than the error message (which may change over time)
#' custom_err <- function(var) {
#'   rlang::abort("A special error", var = var, .subclass = "testthat_special")
#' }
#' expect_error(custom_err("a"), class = "testthat_special")
#'
#' # Note that `expect_error()` returns the error object so you can test
#' # its components if needed
#' err <- expect_error(custom_err("a"), class = "testthat_special")
#' expect_equal(err$var, "a")
expect_error <- function(object,
                         regexp = NULL,
                         class = NULL,
                         ...,
                         info = NULL,
                         label = NULL
                         ) {
  act <- quasi_capture(enquo(object), label, capture_error, entrace = TRUE)
  msg <- compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...)

  # Access error fields with `[[` rather than `$` because the
  # `$.Throwable` from the rJava package throws with unknown fields
  expect(is.null(msg), msg, info = info, trace = act$cap[["trace"]])

  if (!is.null(act$cap)) {
    if (is_informative_error(act$cap) && is.null(class) && !is.null(regexp)) {
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
#' @rdname expect_error
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
  expect(is.null(msg), msg, info = info, trace = act$cap[["trace"]])

  invisible(act$val %||% act$cap)
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

#' Is an error informative?
#'
#' @description
#'
#' `is_informative_error()` is a generic predicate that indicates
#' whether testthat users should explicitly test for an error
#' class. When it returns `TRUE` (the default), and `expect_error()`
#' does not check for the class, a warning is issued during tests.
#' You can silence the warning by implementing `is_informative_error()`.
#'
#' The main use case for overriding this method is to introduce an
#' experimental error class when you need more experience while
#' developing an error hierarchy for your package. Override
#' `is_informative_error()` to return `FALSE` to avoid encouraging
#' users to depend on the experimental class in their tests.
#'
#' Since testthat should be a `Suggest` dependency, methods for
#' `is_informative_error()` should typically be lazily registered,
#' e.g. with `vctrs::s3_register()`.
#'
#' @param x An error object.
#' @inheritParams ellipsis::dots_empty
#'
#' @details
#' A few classes are hard-coded as uninformative:
#' - `simpleError`
#' - `rlang_error` unless a subclass is detected
#' - `Rcpp::eval_error`
#' - `Rcpp::exception`
#'
#' @keywords internal
#' @export
is_informative_error <- function(x, ...) {
  ellipsis::check_dots_empty()

  if (!inherits(x, "error")) {
    return(TRUE)
  }

  if (inherits(x, c("simpleError", "Rcpp::eval_error", "Rcpp::exception"))) {
    return(FALSE)
  }

  if (inherits_only(x, c("rlang_error", "error", "condition"))) {
    return(FALSE)
  }

  UseMethod("is_informative_error")
}

#' @export
is_informative_error.default <- function(x, ...) {
  TRUE
}
