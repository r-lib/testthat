#' Expectation: does code produce output/message/warning/error?
#'
#' Use `expect_output()`, `expect_message()`, `expect_warning()`,
#' or `expect_error()` to check for specific outputs. Use
#' `expect_silent()` to assert that there should be no output of
#' any type. The file-based `expect_output_file()` compares the output
#' to the contents of a text file and optionally updates it.
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

  act <- list()
  act$quo <- enquo(object)
  act$lab <- label %||% quo_label(act$quo)
  act$out <- capture_output(act$val <- eval_tidy(act$quo))

  if (identical(regexp, NA)) {
    expect(
      identical(act$out, ""),
      sprintf("%s produced output.\n%s", act$lab, encodeString(act$out)),
      info = info
    )
  } else if (is.null(regexp) || identical(act$out, "")) {
    expect(
      !identical(act$out, ""),
      sprintf("%s produced no output", act$lab),
      info = info
    )
  } else {
    expect_match(act$out, regexp, ..., info = info, label = act$lab)
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

  if (!is.null(regexp) && !is.null(class)) {
    stop("You may only specify one of `regexp` and `class`", call. = FALSE)
  }

  act <- list()
  act$quo <- enquo(object)
  act$lab <- label %||% quo_label(act$quo)
  act$err <- capture_error(act$val <- eval_tidy(act$quo))

  if (!is.null(class)) {
    expect(
      inherits(act$err, class),
      sprintf("%s did not throw an error of class '%s'.", act$lab, class),
      info = info
    )
  } else if (identical(regexp, NA)) {
    expect(
      is.null(act$err),
      sprintf("%s threw an error.\n%s", act$lab, act$err$message),
      info = info
    )
  } else if (is.null(regexp) || is.null(act$err)) {
    expect(
      !is.null(act$err),
      sprintf("%s did not throw an error.", act$lab),
      info = info
    )
  } else {
    expect_match(act$err$message, regexp, ..., info = info)
  }

  invisible(act$val %||% act$err)
}

#' @export
#' @rdname output-expectations
expect_message <- function(object, regexp = NULL, ..., all = FALSE,
                           info = NULL, label = NULL) {

  act <- list()
  act$quo <- enquo(object)
  act$lab <- label %||% quo_label(act$quo)
  act$cnd <- capture_messages(act$val <- eval_tidy(act$quo))

  n <- length(act$cnd)
  msg <- sprintf(ngettext(n, "%d message", "%d messages"), n)

  if (identical(regexp, NA)) {
    bullets <- paste("* ", act$cnd, collapse = "\n")

    expect(
      n == 0,
      sprintf("%s showed %s.\n%s", act$lab, msg, bullets),
      info = info
    )
  } else if (is.null(regexp) || n == 0) {
    expect(
      n > 0,
      sprintf("%s showed %s", act$lab, msg),
      info = info
    )
  } else {
    expect_match(act$cnd, regexp, all = all, ..., info = info)
  }

  invisible(act$val)
}

#' @export
#' @rdname output-expectations
expect_warning <- function(object, regexp = NULL, ..., all = FALSE,
                           info = NULL, label = NULL) {

  act <- list()
  act$quo <- enquo(object)
  act$lab <- label %||% quo_label(act$quo)
  act$cnd <- capture_warnings(act$val <- eval_tidy(act$quo))

  n <- length(act$cnd)
  msg <- sprintf(ngettext(n, "%d warning", "%d warnings"), n)

  if (identical(regexp, NA)) {
    bullets <- paste("* ", act$cnd, collapse = "\n")

    expect(
      n == 0,
      sprintf("%s showed %s.\n%s", act$lab, msg, bullets),
      info = info
    )
  } else if (is.null(regexp) || n == 0) {
    expect(
      n > 0,
      sprintf("%s showed %s", act$lab, msg),
      info = info
    )
  } else {
    expect_match(act$cnd, regexp, all = all, ..., info = info)
  }

  invisible(act$val)
}

#' @export
#' @rdname output-expectations
expect_silent <- function(object) {

  act <- list()
  act$quo <- enquo(object)
  act$lab <- quo_label(act$quo)
  act$val <- evaluate_promise(act$val <- eval_tidy(act$quo))

  outputs <- c(
    if (!identical(act$val$output, "")) "output",
    if (length(act$val$warnings) > 0) "warnings",
    if (length(act$val$messages) > 0) "messages"
  )

  expect(
    length(outputs) == 0,
    sprintf("%s produced %s.", act$lab, paste(outputs, collapse = ", "))
  )

  invisible(act$val$result)
}
