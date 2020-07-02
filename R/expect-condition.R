#' Expectation: does code throw error or other condition?
#'
#' @description
#' `expect_error()` and `expect_condition()` check that code throws an error
#' or condition with a message that matches `regexp`, or a class that inherits
#' from `class`. See below for more details.
#'
#' If the code throws conditions that don't match `regexp`/`class` they will
#' bubble up outside of the expectation, so you'll need to handle in some
#' other way.
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
#' @inheritDotParams expect_match -object -regexp -info -label -all
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
  expect_condition_matching("error", object,
    regexp = regexp,
    class = class,
    ...,
    info = info,
    label = label
  )
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

  expect_condition_matching("condition", object,
    regexp = regexp,
    class = class,
    ...,
    info = info,
    label = label
  )
}

expect_condition_matching <- function(base_class,
                                      object,
                                      regexp = NULL,
                                      class = NULL,
                                      ...,
                                      info = NULL,
                                      label = NULL) {

  act <- quasi_capture(
    enquo(object), label, capture_matching_condition,
    matches = cnd_matcher(class %||% base_class, regexp, ...)
  )

  expected <- !identical(regexp, NA)
  msg <- compare_condition(base_class, act$cap, act$lab, expected)

  # Access error fields with `[[` rather than `$` because the
  # `$.Throwable` from the rJava package throws with unknown fields
  expect(is.null(msg), msg, info = info, trace = act$cap[["trace"]])

  invisible(act$val %||% act$cap)
}

# -------------------------------------------------------------------------

cnd_matcher <- function(class, pattern = NULL, ...) {
  force(class)
  force(pattern)

  if (is.null(pattern) || identical(pattern, NA)) {
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
    } else if (inherits(cnd, "error")) {
      return_from(tl, cnd)
    }
  })

  matched
}

# Helpers -----------------------------------------------------------------

compare_condition <- function(cond_type, cond, lab, expected) {
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
