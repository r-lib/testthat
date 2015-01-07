#' Expectation: does string/output/warning/error match a regular expression?
#'
#' @inheritParams expect_that
#' @param regexp regular expression to test against. If ommited,
#'   just asserts that code produces some output, messsage, warning or
#'   error.
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
#' \dontrun{expect_message(f(1))}
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
#' \dontrun{expect_warning(f(1))}
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
      paste0("does not match '", regexp, "'. ", values),
      paste0("matches '", regexp, "'")
    )
  }
}

#' @export
#' @rdname matching-expectations
expect_output <- function(object, regexp, ..., info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, prints_text(regexp, ...), info = info, label = label)
}
#' @export
#' @rdname oldskool
prints_text <- function(regexp, ...) {
  function(expr) {
    output <- evaluate_promise(expr, print = TRUE)$output
    matches(regexp, ...)(output)
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

    no_error <- !inherits(res, "try-error")
    if (no_error) {
      return(expectation(FALSE,
        "code did not generate an error",
        "code generated an error"
      ))
    }

    if (!is.null(regexp)) {
      matches(regexp, ...)(res)
    } else {
      expectation(TRUE, "no error thrown", "threw an error")
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

    if (!is.null(regexp) && length(warnings) > 0) {
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

    if (!is.null(regexp) && length(messages) > 0) {
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
