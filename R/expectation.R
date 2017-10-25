#' The building block of all `expect_` functions
#'
#' Use this if you are writing your own expectation. See
#' `vignette("custom-expectation")` for details
#'
#' @param ok Was the expectation successful?
#' @param failure_message What message should be shown if the expectation was
#'   not successful?
#' @param info Additional information. Included for backward compatibility
#'   only and new expectations should not use it.
#' @param srcref Only needed in very rare circumstances where you need to
#'   forward a srcref captured elsewhere.
#' @export
expect <- function(ok, failure_message, info = NULL, srcref = NULL) {
  exp <- as.expectation.logical(ok, failure_message, info = info, srcref = srcref)

  withRestarts(
    if (expectation_broken(exp)) {
      stop(exp)
    } else {
      signalCondition(exp)
    },
    continue_test = function(e) NULL
  )

  invisible(exp)
}

#' Construct an expectation object
#'
#' For advanced use only.
#'
#' @keywords internal
#' @export
expectation <- function(type, message, srcref = NULL) {
  type <- match.arg(type, c("success", "failure", "error", "skip", "warning"))

  structure(
    list(
      message = message,
      srcref = srcref
    ),
    class = c(
      paste0("expectation_", type),
      "expectation",
      # Make broken expectations catchable by try()
      if (type %in% c("failure", "error")) "error",
      "condition"
    )
  )
}

#' @export
#' @rdname expectation
#' @param x object to test for class membership
is.expectation <- function(x) inherits(x, "expectation")

#' Quasi-labelling
#'
#' The first argument to every `expect_` function can use unquoting to
#' construct better labels. This makes it easy to create informative labels
#' expectations are used inside a function or a for loop. `quasi_label()` wraps
#' up the details, returning the expression and label.
#'
#' @param quo A quosure created by `rlang::enquo()`.
#' @param label An optional label to override the default. This is
#'   only provided for internal usage. Modern expectations should not
#'   include a `label` parameter.
#' @keywords internal
#' @return A list containing two elements:
#' \item{val}{The evaluate value of `quo`}
#' \item{lab}{The quasiquoted label generated from `quo`}
#' @export
#' @examples
#' f <- function(i) if (i > 3) i * 9 else i * 10
#' i <- 10
#'
#' # This short of expression commonly occurs inside a for loop or function
#' # And the failure isn't helpful because you can't see the value of i
#' # that caused the problem:
#' show_failure(expect_equal(f(i), i * 10))
#'
#' # To overcome this issue, testthat allows you to unquote expressions using
#' # !!. This causes the failure message to show the value rather than the
#' # variable name
#' show_failure(expect_equal(f(!!i), !!(i * 10)))
quasi_label <- function(quo, label = NULL) {
  force(quo)

  list(
    val = eval_bare(get_expr(quo), get_env(quo)),
    lab = label %||% expr_label(get_expr(quo))
  )
}

quasi_capture <- function(quo, capture, label = NULL) {
  act <- list()
  act$lab <- label %||% quo_label(quo)
  act$cap <- capture(act$val <- eval_bare(get_expr(quo), get_env(quo)))

  act
}

expr_label <- function(x) {
  if (is.character(x)) {
    encodeString(x, quote = '"')
  } else if (is.atomic(x)) {
    format(x)
  } else if (is.name(x)) {
    paste0("`", as.character(x), "`")
  } else {
    chr <- deparse(x)
    if (length(chr) > 1) {
      if (identical(x[[1]], quote(`function`))) {
        x[[3]] <- quote(...)
        chr <- paste(deparse(x), collapse = "\n")
      } else {
        chr <- paste(deparse(as.call(list(x[[1]], quote(...)))), collapse = "\n")
      }
    }
    chr
  }
}

expectation_type <- function(exp) {
  stopifnot(is.expectation(exp))
  gsub("^expectation_", "", class(exp)[[1]])
}

expectation_success <- function(exp) {
  expectation_type(exp) == "success"
}

expectation_failure <- function(exp) {
  expectation_type(exp) == "failure"
}

expectation_error <- function(exp) {
  expectation_type(exp) == "error"
}

expectation_skip <- function(exp) {
  expectation_type(exp) == "skip"
}

expectation_warning <- function(exp) {
  expectation_type(exp) == "warning"
}

expectation_broken <- function(exp) {
  expectation_failure(exp) || expectation_error(exp)
}
expectation_ok <- function(exp) {
  expectation_type(exp) %in% c("success", "warning")
}



as.expectation <- function(x, ...) UseMethod("as.expectation", x)

#' @export
as.expectation.default <- function(x, ..., srcref = NULL) {
  stop(
    "Don't know how to convert '", paste(class(x), collapse = "', '"),
    "' to expectation.", call. = FALSE
  )
}

#' @export
as.expectation.expectation <- function(x, ..., srcref = NULL) {
  if (is.null(x$srcref)) {
    x$srcref <- srcref
  }
  x
}

#' @export
as.expectation.logical <- function(x, message, ..., srcref = NULL, info = NULL) {
  type <- if (x) "success" else "failure"
  message <- if (x) "success" else add_info(message, info)
  expectation(type, message, srcref = srcref)
}

add_info <- function(message, info = NULL) {
  paste(c(message, info), collapse = "\n")
}

#' @export
as.expectation.error <- function(x, ..., srcref = NULL) {
  error <- x$message

  msg <- gsub("Error.*?: ", "", as.character(error))

  # Need to remove trailing newline from error message to be consistent
  # with other messages
  msg <- gsub("\n$", "", msg)

  expectation("error", msg, srcref)
}

#' @export
as.expectation.warning <- function(x, ..., srcref = NULL) {
  msg <- x$message

  # msg <- gsub("Error.*?: ", "", as.character(error))
  # msg <- gsub("\n$", "", msg)

  expectation("warning", msg, srcref)
}

#' @export
as.expectation.skip <- function(x, ..., srcref = NULL) {
  error <- x$message
  msg <- gsub("Error.*?: ", "", as.character(error))

  expectation("skip", msg, srcref)
}

#' @export
print.expectation <- function(x, ...) cat(format(x), "\n")

#' @export
format.expectation_success <- function(x, ...) {
  "As expected"
}

#' @export
format.expectation_error <- function(x, ...) {
  paste(c(x$message, create_traceback(x$call)), collapse = "\n")
}

#' @export
format.expectation <- function(x, ...) {
  x$message
}

single_letter_summary <- function(x) {
  switch(expectation_type(x),
    skip    = colourise("S", "skip"),
    success = colourise(".", "success"),
    error   = colourise("E", "error"),
    failure = colourise("F", "failure"),
    warning = colourise("W", "warning"),
    "?"
  )
}
