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
#' @param expected_class expected class of error condition, may be a vector.
#'    This can be used to test that functions produce customized error
#'    conditions of the appropriate class. The check passes if the error is
#'    if any of the classes named.
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
    
    expectation(
      length(matches) > 0 && if (all) all(matches) else any(matches),
      paste0("does not match '", encodeString(regexp), "'. ", values),
      paste0("matches '", encodeString(regexp), "'")
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
      expectation(
        identical(output, ""),
        paste0("produced output: ", encodeString(output)),
        "didn't produce output"
      )
    } else if (is.null(regexp)) {
      expectation(
        !identical(output, ""),
        "didn't produce output",
        "produced output"
      )
    } else {
      matches(regexp, ...)(output)
    }
  }
}

#' @export
#' @rdname matching-expectations
expect_error <- function(object, regexp = NULL, expected_class = NULL, ..., info = NULL,
                         label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, 
              throws_error(regexp, expected_class = expected_class, ...),
              info = info, label = label)
}
#' @export
#' @rdname oldskool
throws_error <- function(regexp = NULL, expected_class = NULL, ...) {
  if (identical(regexp, NA) && !is.null(expected_class)) {
    stop("If regexp argument is NA (expecting no error), class should be NULL")
  }
  function(expr) {
    error <- tryCatch({
      expr
      NULL
    },
    error = function(e) {
      e
    })
    
    paste_with_commas <- function(x, y) paste(x, y, sep=", ")
    expected_classes_as_string <- Reduce(paste_with_commas, expected_class)
    no_error_string <- "no errors raised"
    
    if (identical(regexp, NA)) {
      expectation(
        is.null(error),
        paste0("expected no errors:\n", as.character(error),
               no_error_string),
        success_msg = no_error_string
      )
    } else if (is.null(error)) {
      expectation(FALSE, no_error_string) 
    } else if (!is.null(expected_class) && !inherits(error, expected_class)) {
      expectation(FALSE,
                  paste("error did not inherit from expected class(es):", 
                        expected_classes_as_string)
      )
    } else if (!is.null(regexp)) {
      exp <- matches(regexp, ...)(as.character(error))
      if (exp$passed && !is.null(expected_class)) {
        exp$success_msg <- paste(exp$success_msg,
                                 "and error was one of the expected classes:",
                                 expected_classes_as_string)
      }
      exp
    } else {
      expectation(TRUE, no_error_string, success_msg = "error raised")
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
      expectation(
        length(warnings) == 0,
        paste0("expected no warnings:\n", paste("* ", warnings, collapse = "\n")),
        "no warnings"
      )
    } else if (!is.null(regexp) && length(warnings) > 0) {
      matches(regexp, all = all, ...)(warnings)
    } else {
      expectation(
        length(warnings) > 0,
        "no warnings given",
        paste0(length(warnings), " warnings created")
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
      expectation(
        length(messages) == 0,
        paste0("expected no message, got:\n", paste("* ", messages, collapse = "\n")),
        paste0("no messages")
      )
    } else if (!is.null(regexp) && length(messages) > 0) {
      matches(regexp, all = all, ...)(messages)
    } else {
      expectation(
        length(messages) > 0,
        "no messages shown",
        paste0(length(messages), " messages shown")
      )
    }
  }
}
