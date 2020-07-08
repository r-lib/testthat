
new_capture <- function(class) {
  exiting_handlers <- rep_named(class, list(identity))

  calling_handlers <- rep_named(class, alist(function(cnd) {
    if (can_entrace(cnd)) {
      cnd <- cnd_entrace(cnd)
    }
    return_from(env, cnd)
  }))

  formals <- pairlist2(code = , entrace = FALSE)

  # R CMD check global variable NOTE
  code <- entrace <- NULL

  body <- expr({
    if (!entrace) {
      return(tryCatch({ code; NULL }, !!!exiting_handlers))
    }

    env <- environment()
    withCallingHandlers({ code; NULL }, !!!calling_handlers)
  })

  new_function(formals, body, ns_env("testthat"))
}

#' Capture conditions, including messages, warnings, expectations, and errors.
#'
#' @description
#' `r lifecycle::badge("superseded")`
#'
#' These functions allow you to capture the side-effects of a function call
#' including printed output, messages and warnings. We no longer recommend
#' that you use these functions, instead relying on the [expect_message()]
#' and friends to bubble up unmatched conditions. If you just want to silence
#' unimportant warnings, use [suppressWarnings()].
#'
#' @param code Code to evaluate
#' @param entrace Whether to add a [backtrace][rlang::trace_back] to
#'   the captured condition.
#' @return Singular functions (`capture_condition`, `capture_expectation` etc)
#'   return a condition object. `capture_messages()` and `capture_warnings`
#'   return a character vector of message text.
#' @keywords internal
#' @export
#' @examples
#' f <- function() {
#'   message("First")
#'   warning("Second")
#'   message("Third")
#' }
#'
#' capture_message(f())
#' capture_messages(f())
#'
#' capture_warning(f())
#' capture_warnings(f())
#'
#' # Condition will capture anything
#' capture_condition(f())
capture_condition <- new_capture("condition")

#' @export
#' @rdname capture_condition
capture_error <- new_capture("error")

#' @export
#' @rdname capture_condition
capture_expectation <- new_capture("expectation")

#' @export
#' @rdname capture_condition
capture_message <- new_capture("condition")

#' @export
#' @rdname capture_condition
capture_warning <- new_capture("warning")

#' @export
#' @rdname capture_condition
capture_messages <- function(code) {
  out <- Stack$new()

  withCallingHandlers(
    code,
    message = function(condition) {
      out$push(condition)
      maybe_restart("muffleMessage")
    }
  )

  get_messages(out$as_list())
}

#' @export
#' @rdname capture_condition
capture_warnings <- function(code) {
  out <- Stack$new()

  withCallingHandlers(
    code,
    warning = function(condition) {
      out$push(condition)
      maybe_restart("muffleWarning")
    }
  )

  get_messages(out$as_list())
}

get_messages <- function(x) {
  vapply(x, cnd_message, FUN.VALUE = character(1))
}

#' Is an error informative?
#'
#' @description
#' `r lifecycle::badge("deprecated")`
#'
#' `is_informative_error()` is a generic predicate that indicates
#' whether testthat users should explicitly test for an error
#' class. Since we no longer recommend you do that, this generic
#' has been deprecated.
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
  lifecycle::deprecate_warn("3.0.0", "is_informative_error()")
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
