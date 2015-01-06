#' Expectation: does the object inherit from a class?
#'
#' Tests whether or not an object inherits from any of a list of classes.
#'
#' @inheritParams expect_that
#' @param class character vector of class names
#' @seealso \code{\link{inherits}}
#' @family expectations
#' @export
#' @examples
#' expect_is(1, "numeric")
#' a <- matrix(1:10, nrow = 5)
#' expect_is(a, "matrix")
#'
#' expect_is(mtcars, "data.frame")
#' # alternatively for classes that have an is method
#' expect_true(is.data.frame(mtcars))
expect_is <- function(object, class, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, is_a(class), info, label)
}

#' @export
#' @rdname oldskool
is_a <- function(class) {
  function(x) {
    actual <- paste0(class(x), collapse = ", ")
    expectation(
      inherits(x, class),
      paste0("inherits from ", actual, " not ", class),
      paste0("inherits from ", class)
    )
  }
}

#' Expectation: is the object true/false?
#'
#' These are fall-back expectations that you can use when none of the other
#' more specific expectations apply. The disadvantage is that you may get
#' a less informative error message.
#'
#' Attributes are ignored.
#'
#' @seealso \code{\link{is_false}} for complement
#' @family expectations
#' @export
#' @examples
#' expect_true(2 == 2)
#' # Failed expectations will throw an error
#' \dontrun{
#' expect_true(2 != 2)
#' }
#' expect_true(!(2 != 2))
#' # or better:
#' expect_false(2 != 2)
#'
#' a <- 1:3
#' expect_true(length(a) == 3)
#' # but better to use more specific expectation, if available
#' expect_equal(length(a), 3)
expect_true <- function(object, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, is_true(), info, label)
}

#' @export
#' @rdname expect_true
#' @inheritParams expect_that
expect_false <- function(object, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, is_false(), info, label)
}

#' @export
#' @rdname oldskool
is_true <- function() {
  function(x) {
    expectation(
      identical(as.vector(x), TRUE),
      "isn't true",
      "is true"
    )
  }
}

#' @export
#' @rdname oldskool
is_false <- function() {
  function(x) {
    expectation(
      identical(as.vector(x), FALSE),
      "isn't false",
      "is false"
    )
  }
}

#' Expectation: is the object NULL?
#'
#' @family expectations
#' @inheritParams expect_that
#' @export
#' @examples
#' expect_null(NULL)
expect_null <- function(object, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, is_null(), info, label)
}

#' @export
#' @rdname oldskool
is_null <- function() {
  function(x) {
    expectation(
      identical(x, NULL),
      "isn't null",
      "is null"
    )
  }
}


#' Expectation: does string match regular expression?
#'
#' If the object to be tested has length greater than one, all elements of
#' the vector must match the pattern in order to pass.
#'
#' @inheritParams expect_that
#' @param regexp regular expression to test against
#' @param all should all elements of actual value match \code{regexp} (TRUE),
#'    or does only one need to match (FALSE)
#' @param ... For \code{matches}: other arguments passed on to
#'   \code{\link{grepl}}. For \code{expect_match}: other arguments passed on
#'   to \code{matches}.
#' @family expectations
#' @export
#' @examples
#' expect_match("Testing is fun", "fun")
#' expect_match("Testing is fun", "f.n")
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

#' Expectation: does printed output match a regular expression?
#'
#' @inheritParams expect_that
#' @param regexp regular expression to test against
#' @param ... other arguments passed to \code{\link{matches}}
#' @family expectations
#' @export
#' @examples
#' str(mtcars)
#' expect_output(str(mtcars), "32 obs")
#' expect_output(str(mtcars), "11 variables")
#'
#' # You can use the arguments of grepl to control the matching
#' expect_output(str(mtcars), "11 VARIABLES", ignore.case = TRUE)
#' expect_output(str(mtcars), "$ mpg", fixed = TRUE)
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

#' Expectation: does expression throw an error?
#'
#' @inheritParams expect_that
#' @param regexp optional regular expression to match. If not specified, just
#'   asserts that expression throws some error.
#' @param ... other arguments passed to \code{\link{matches}}
#' @family expectations
#' @export
#' @examples
#' f <- function() stop("My error!")
#' expect_error(f())
#' expect_error(f(), "My error!")
#'
#' # You can use the arguments of grepl to control the matching
#' expect_error(f(), "my error!", ignore.case = TRUE)
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

#' Expectation: does expression give a warning?
#'
#' Needs to match at least one of the warnings produced by the expression.
#'
#' @inheritParams expect_that
#' @inheritParams expect_match
#' @param regexp optional regular expression to match. If not specified, just
#'   asserts that expression gives some warning.
#' @param all if \code{TRUE}, all warnings must match given regular expression;
#'   if \code{FALSE} (the default), then only only warning needs to match
#' @param ... other arguments passed to \code{\link{expect_match}}
#' @family expectations
#' @export
#' @examples
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

#' Expectation: does expression show a message?
#'
#' Needs to match at least one of the messages produced by the expression.
#'
#' @inheritParams expect_that
#' @param regexp optional regular expression to match. If not specified, just
#'   asserts that expression shows some message.
#' @param all if \code{TRUE}, all messages must match given regular expression;
#'   if \code{FALSE} (the default), then only one message needs to match.
#' @param ... other arguments passed to \code{\link{expect_match}}
#' @family expectations
#' @export
#' @examples
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

#' Expectation: does expression take less than a fixed amount of time to run?
#'
#' This is useful for performance regression testing.
#'
#' @family expectations
#' @keywords internal
#' @export
#' @param amount maximum duration in seconds
takes_less_than <- function(amount) {
  function(expr) {
    duration <- system.time(force(expr))["elapsed"]

    expectation(
      duration < amount,
      paste0("took ", duration, " seconds, which is more than ", amount),
      paste0("took ", duration, " seconds, which is less than ", amount)
    )
  }
}

#' Expectation: does object have names?
#'
#' You can either check for the presence of names (leaving \code{expected}
#' blank), specific names (by suppling a vector of names), or absence of
#' names (with \code{NULL}).
#'
#' @inheritParams expect_that
#' @param expected Character vector of expected names. Leave missing to
#'   match any names. Use \code{NULL} to check for absence of names.
#' @param ignore.order If \code{TRUE}, sorts names before comparing to
#'   ignore the effect of order.
#' @param ignore.case If \code{TRUE}, lowercases all names to ignore the
#'   effect of case.
#' @param ... Other arguments passed onto \code{has_names}.
#' @family expectations
#' @export
#' @examples
#' x <- c(a = 1, b = 2, c = 3)
#' expect_named(x)
#' expect_named(x, c("a", "b", "c"))
#'
#' # Use options to control sensitivity
#' expect_named(x, c("B", "C", "A"), ignore.order = TRUE, ignore.case = TRUE)
#'
#' # Can also check for the absence of names with NULL
#' z <- 1:4
#' expect_named(z, NULL)
expect_named <- function(object, expected, ignore.order = FALSE,
                         ignore.case = FALSE, info = NULL,
  label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, has_names(expected, ignore.order = ignore.order,
    ignore.case = ignore.case), info = info, label = label)
}
#' @export
#' @rdname oldskool
has_names <- function(expected, ignore.order = FALSE, ignore.case = FALSE) {
  if (missing(expected)) {
    function(x) {
      expectation(
        !identical(names(x), NULL),
        paste0("does not have names"),
        paste0("has names")
      )
    }
  } else {
    expected <- normalise_names(expected, ignore.order, ignore.case)

    function(x) {
      x_names <- normalise_names(names(x), ignore.order, ignore.case)

      expectation(
        identical(x_names, expected),
        paste0("names don't match ", paste0(expected, collapse = ", ")),
        paste0("names as expected")
      )
    }
  }
}

normalise_names <- function(x, ignore.order = FALSE, ignore.case = FALSE) {
  if (is.null(x)) return()

  if (ignore.order) x <- sort(x)
  if (ignore.case)  x <- tolower(x)

  x
}

#' Expectation: is returned value less or greater than specified value?
#'
#' This is useful for ensuring returned value is below a ceiling or above
#' a floor.
#'
#' @inheritParams expect_that
#' @param expected Expected value
#' @param label For full form, label of expected object used in error
#'   messages. Useful to override default (deparsed expected expression) when
#'   doing tests in a loop.  For short cut form, object label. When
#'   \code{NULL}, computed from deparsed object.
#' @param expected.label Equivalent of \code{label} for shortcut form.
#' @param ... other values passed to \code{\link{all.equal}}
#' @family expectations
#' @examples
#' a <- 9
#' expect_less_than(a, 10)
#'
#' \dontrun{
#' expect_less_than(11, 10)
#' }
#'
#' a <- 11
#' expect_more_than(a, 10)
#' \dontrun{
#' expect_more_than(9, 10)
#' }
#' @name expect-compare
NULL

#' @export
#' @rdname oldskool
is_less_than <- function(expected, label = NULL, ...) {
  if (is.null(label)) {
    label <- find_expr("expected")
  } else if (!is.character(label) || length(label) != 1) {
    label <- deparse(label)
  }
  function(actual) {
    diff <- expected - actual

    expectation(
      diff > 0,
      paste0("not less than ", label, ". Difference: ", format(diff)),
      paste0("is less than ", label)
    )
  }
}

#' @export
#' @rdname expect-compare
expect_less_than <- function(object, expected, ..., info = NULL, label = NULL,
                         expected.label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  if (is.null(expected.label)) {
    expected.label <- find_expr("expected")
  }
  expect_that(object, is_less_than(expected, label = expected.label, ...),
              info = info, label = label)
}

#' @export
#' @rdname oldskool
is_more_than <- function(expected, label = NULL, ...) {
  if (is.null(label)) {
    label <- find_expr("expected")
  } else if (!is.character(label) || length(label) != 1) {
    label <- deparse(label)
  }
  function(actual) {
    diff <- expected - actual

    expectation(
      diff < 0,
      paste0("not more than ", label, ". Difference: ", format(diff)),
      paste0("is more than ", label)
    )
  }
}

#' @export
#' @rdname expect-compare
expect_more_than <- function(object, expected, ..., info = NULL, label = NULL,
                             expected.label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  if (is.null(expected.label)) {
    expected.label <- find_expr("expected")
  }
  expect_that(object, is_more_than(expected, label = expected.label, ...),
              info = info, label = label)
}
