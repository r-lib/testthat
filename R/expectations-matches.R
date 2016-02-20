#' Expectation: does string/output/message/warning/error match a regular expression?
#'
#' @inheritParams expect_that
#' @param regexp regular expression to test against. If omitted,
#'   just asserts that code produces some output, messsage, warning or
#'   error. Alternatively, you can specify \code{NA} to indicate that
#'   there should be no output, messages, warnings or errors.
#' @param all should all elements of actual value match \code{regexp} (TRUE),
#'    or does only one need to match (FALSE)
#' @param ... Additional arguments passed on to \code{\link{grepl}}, e.g.
#'   \code{ignore.case} or \code{fixed}.
#' @family expectations
#' @examples
#' expect_match("Testing is fun", "fun")
#' expect_match("Testing is fun", "f.n")
#'
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
#'
#' # Errors --------------------------------------------------------------------
#' f <- function() stop("My error!")
#' expect_error(f())
#' expect_error(f(), "My error!")
#'
#' # You can use the arguments of grepl to control the matching
#' expect_error(f(), "my error!", ignore.case = TRUE)
#'
#' @name matching-expectations
NULL

#' @export
#' @rdname matching-expectations
expect_match <- function(object, regexp, ..., all = TRUE, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, matches(regexp, all = all, ...), info = info, label = label)
}

#' @export
#' @rdname oldskool
matches <- function(regexp, all = TRUE, ...) {
  stopifnot(is.character(regexp), length(regexp) == 1)
  function(char) {
    matches <- grepl(regexp, char, ...)
    if (length(char) > 1) {
      values <- paste0("Actual values:\n",
        paste0("* ", encodeString(char), collapse = "\n"))
    } else {
      values <- paste0("Actual value: \"", encodeString(char), "\"")
    }

    expect(
      length(matches) > 0 && if (all) all(matches) else any(matches),
      paste0("does not match '", encodeString(regexp), "'. ", values)
    )
  }
}

#' @export
#' @rdname matching-expectations
expect_output <- function(object, regexp = NULL, ..., info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, prints_text(regexp, ...), info = info, label = label)
}
#' @export
#' @rdname oldskool
prints_text <- function(regexp, ...) {
  function(expr) {
    output <- evaluate_promise(expr)$output

    if (identical(regexp, NA)) {
      expect(
        identical(output, ""),
        paste0("produced output: ", encodeString(output))
      )
    } else if (is.null(regexp)) {
      expect(
        !identical(output, ""),
        "didn't produce output"
      )
    } else {
      matches(regexp, ...)(output)
    }
  }
}

#' @export
#' @rdname matching-expectations
expect_error <- function(object, regexp = NULL, ..., info = NULL,
  label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, throws_error(regexp, ...), info = info, label = label)
}
#' @export
#' @rdname oldskool
throws_error <- function(regexp = NULL, ...) {
  function(expr) {
    res <- try(force(expr), TRUE)

    if (inherits(res, "try-error")) {
      errors <- as.character(res)
    } else {
      errors <- character()
    }

    if (identical(regexp, NA)) {
      expect(
        length(errors) == 0,
        paste0("expected no errors:\n", paste("* ", errors, collapse = "\n"))
      )
    } else if (!is.null(regexp) && length(errors) > 0) {
      matches(regexp, ...)(errors)
    } else {
      expect(
        length(errors) > 0,
        "no errors raised"
      )
    }
  }
}

#' @export
#' @rdname matching-expectations
expect_warning <- function(object, regexp = NULL, ..., all = FALSE, info = NULL,
  label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, gives_warning(regexp, ..., all = all), info = info, label = label)
}
#' @export
#' @rdname oldskool
gives_warning <- function(regexp = NULL, all = FALSE, ...) {
  function(expr) {
    warnings <- evaluate_promise(expr)$warnings

    if (identical(regexp, NA)) {
      expect(
        length(warnings) == 0,
        paste0("expected no warnings:\n", paste("* ", warnings, collapse = "\n"))
      )
    } else if (!is.null(regexp) && length(warnings) > 0) {
      matches(regexp, all = all, ...)(warnings)
    } else {
      expect(
        length(warnings) > 0,
        "no warnings given"
      )
    }
  }
}

#' @export
#' @rdname matching-expectations
expect_message <- function(object, regexp = NULL, ..., all = FALSE, info = NULL,
                           label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, shows_message(regexp, all = all, ...), info = info, label = label)
}
#' @export
#' @rdname oldskool
shows_message <- function(regexp = NULL, all = FALSE, ...) {
  function(expr) {
    messages <- evaluate_promise(expr)$messages

    if (identical(regexp, NA)) {
      expect(
        length(messages) == 0,
        paste0("expected no message, got:\n", paste("* ", messages, collapse = "\n"))
      )
    } else if (!is.null(regexp) && length(messages) > 0) {
      matches(regexp, all = all, ...)(messages)
    } else {
      expect(
        length(messages) > 0,
        "no messages shown"
      )
    }
  }
}
