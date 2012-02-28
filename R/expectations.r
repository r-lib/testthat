#' Expectation: does the object inherit from a class?
#'
#' Tests whether or not an object inherits from any of a list of classes. 
#'
#' @param class character vector of class names
#' @seealso \code{\link{inherits}}
#' @family expectations
#' @export
#' @examples
#' expect_that(1, is_a("numeric"))
#' a <- matrix(1:10, nrow = 5)
#' expect_that(a, is_a("matrix"))
#'
#' expect_that(mtcars, is_a("data.frame"))
#' expect_is(mtcars, "data.frame")
#' # alternatively for classes that have an is method
#' expect_that(is.data.frame(mtcars), is_true())
#' # doesn't read quite as nicely
is_a <- function(class) {
  function(x) {
    actual <- str_c(class(x), collapse = ", ")
    expectation(
      inherits(x, class),
      str_c("inherits from ", actual, " not ", class)
    )
  }
}
#' @export
#' @rdname is_a
#' @inheritParams expect_that
expect_is <- function(object, class, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, is_a(class), info, label)
}

#' Expectation: is the object true?
#' 
#' This is a fall-back expectation that you can use when none of the other
#' more specific expectations apply. The disadvantage is that you may get
#' a less informative error message.
#'
#' @seealso \code{\link{is_false}} for complement
#' @family expectations
#' @export
#' @examples
#' expect_that(2 == 2, is_true())
#' expect_true(2 == 2)
#' # Failed expectations will throw an error
#' \dontrun{
#' expect_that(2 != 2, is_true())
#' }
#' expect_that(!(2 != 2), is_true())
#' # or better:
#' expect_that(2 != 2, is_false())
#' 
#' a <- 1:3
#' expect_that(length(a) == 3, is_true())
#' # but better to use more specific expectation, if available
#' expect_that(length(a), equals(3))
is_true <- function() {
  function(x) {
    expectation(
      identical(x, TRUE),
      "isn't true"
    )
  }
}
#' @export
#' @rdname is_true
#' @inheritParams expect_that
expect_true <- function(object, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, is_true(), info, label)
}

#' Expectation: is the object false?
#' 
#' A useful fall-back expectation like \code{\link{is_true}}
#' 
#' @family expectations
#' @export
#' @examples
#' expect_that(3 == 2, is_false())
#' expect_false(3 == 2)
#'
#' a <- 1:3
#' expect_that(length(a) == 4, is_false())
is_false <- function() {
  function(x) {
    expectation(
      identical(x, FALSE),
      "isn't false"
    )
  }
}
#' @export
#' @rdname is_false
#' @inheritParams expect_that
expect_false <- function(object, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, is_false(), info, label)
}


#' Expectation: is the object equal (with numerical tolerance) to a value?
#'
#' Comparison performed using \code{\link{all.equal}}.
# 
#' @param expected Expected value
#' @param label For full form, label of expected object used in error 
#'   messages. Useful to override default (deparsed expected expression) when
#'   doing tests in a loop.  For short cut form, object label. When
#'   \code{NULL}, computed from deparsed object.
#' @param expected.label Equivalent of \code{label} for shortcut form.
#' @param ... other values passed to \code{\link{all.equal}}
#' @family expectations
#' @export
#' @examples
#' a <- 10
#' expect_that(a, equals(10))
#' expect_equal(a, 10)
#'
#' # Use equals() when testing for numeric equality
#' sqrt(2) ^ 2 - 1
#' expect_that(sqrt(2) ^ 2, equals(2))
#' expect_equal(sqrt(2) ^ 2, 2)
#' # Neither of these forms take floating point representation errors into
#' # account
#' \dontrun{
#' expect_that(sqrt(2) ^ 2 == 2, is_true())
#' expect_that(sqrt(2) ^ 2, is_identical_to(2))
#' }
#'
#' # You can pass on additional arguments to all.equal:
#' \dontrun{
#' # Test the ABSOLUTE difference is within .002
#' expect_equal(object = 10.01, expected = 10, tolerance = .002, 
#'   scale = 1)
#'
#' # Test the RELATIVE difference is within .002
#' expectedValue <- 10
#' expect_equal(object = 10.01, expected = expectedValue, tolerance = 0.002,
#'   scale = expectedValue)
#' }
equals <- function(expected, label = NULL, ...) {
  if (is.null(label)) {
    label <- find_expr("expected")
  } else if (!is.character(label) || length(label) != 1) {
    label <- deparse(label)
  }
  
  function(actual) {
    same <- all.equal(expected, actual, ...)
    expectation(
      identical(same, TRUE),
      str_c("not equal to ", label, "\n", str_c(same, collapse = "\n"))
    )
  }
}
#' @export
#' @rdname equals
#' @inheritParams expect_that
expect_equal <- function(object, expected, ..., info = NULL, label = NULL,
                         expected.label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  if (is.null(expected.label)) {
    expected.label <- find_expr("expected")
  }
  expect_that(object, equals(expected, label = expected.label, ...),
              info = info, label = label)
}


#' Expectation: is the object equivalent to a value?
#' This expectation tests for equivalency: are two objects equal once their
#' attributes have been removed.
#' 
#' @inheritParams equals
#' @family expectations
#' @export
#' @examples
#' a <- b <- 1:3
#' names(b) <- letters[1:3]
#' expect_that(a, is_equivalent_to(b, label = b))
#' expect_equivalent(a, b)
is_equivalent_to <- function(expected, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("expected")
  } else if (!is.character(label) || length(label) != 1) {
    label <- deparse(label)
  }
  function(actual) {
    equals(expected, check.attributes = FALSE)(actual)
  } 
}
#' @export
#' @rdname is_equivalent_to
#' @inheritParams expect_that
expect_equivalent <- function(object, expected, info = NULL, label = NULL,
                              expected.label=NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  if (is.null(expected.label)) {
    expected.label <- find_expr("expected")
  }
  expect_that(object, is_equivalent_to(expected, label = expected.label),
              info = info, label = label)
}

#' Expectation: is the object identical to another?
#'
#' Comparison performed using \code{\link{identical}}.
#' 
#' @inheritParams equals
#' @family expectations
#' @export
#' @examples
#' a <- letters[1:3]
#' expect_that(a, is_identical_to(c("a", "b", "c")))
#' expect_identical(a, c("a", "b", "c"))
#' 
#' # Identical does not take into account numeric tolerance
#' \dontrun{
#' expect_that(sqrt(2) ^ 2, is_identical_to(2))
#' expect_identical(sqrt(2) ^ 2, 2)
#' }
is_identical_to <- function(expected, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("expected")
  } else if (!is.character(label) || length(label) != 1) {
    label <- deparse(label)
  }

  function(actual) {
    same <- all.equal(expected, actual)
    if (isTRUE(same)) {
      diff <- "Objects equal but not identical"
    } else {
      diff <- str_c(same, collapse = "\n")
    }
    
    expectation(
      identical(actual, expected),
      str_c("is not identical to ", label, ". Differences: \n", diff)
    )
  }
}
#' @export
#' @rdname is_identical_to
#' @inheritParams expect_that
expect_identical <- function(object, expected, info = NULL, label = NULL,
                             expected.label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  if (is.null(expected.label)) {
    expected.label <- find_expr("expected")
  }
  expect_that(object, is_identical_to(expected, label = expected.label),
              info = info, label = label)
}

#' Expectation: does string match regular expression?
#' 
#' If the object to be tested has length greater than one, all elements of 
#' the vector must match the pattern in order to pass.
#'
#' @param regexp regular expression to test against
#' @param all should all elements of actual value match \code{regexp} (TRUE),
#'    or does only one need to match (FALSE)
#' @seealso \code{\link[stringr]{str_detect}} for the function that powers
#'   the string matching
#' @family expectations
#' @export
#' @examples 
#' expect_that("Testing is fun", matches("fun"))
#' expect_that("Testing is fun", matches("f.n"))
#' expect_match("Testing is fun", "f.n")
matches <- function(regexp, all = TRUE) {
  function(char) {
    matches <- str_detect(char, regexp)
    expectation( 
      if (all) all(matches) else any(matches),
      str_c("does not match '", regexp, "'. Actual value: \n", char)
    )
  }  
}
#' @export
#' @rdname matches
#' @inheritParams expect_that
expect_match <- function(object, regexp, all = TRUE, info = NULL,
                         label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, matches(regexp, all = all), info = info, label = label)
}

#' Expectation: does printed output match a regular expression?
#' 
#' @param regexp regular expression to test against
#' @param ... other arguments passed to \code{\link{grepl}}
#' @family expectations
#' @export
#' @examples 
#' str(mtcars)
#' expect_that(str(mtcars), prints_text("32 obs"))
#' expect_that(str(mtcars), prints_text("11 variables"))
#' expect_output(str(mtcars), "11 variables")
prints_text <- function(regexp, ...) {
  function(expr) {
    output <- str_c(capture.output(force(expr)), collapse = "")
    matches(regexp, ...)(output)
  }
}
#' @export
#' @rdname prints_text
#' @inheritParams expect_that
expect_output <- function(object, regexp, ..., info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, prints_text(regexp, ...), info = info, label = label)
}

#' Expectation: does expression throw an error?
#' 
#' @param regexp optional regular expression to match. If not specified, just
#'   asserts that expression throws some error.
#' @family expectations
#' @export
#' @examples
#' expect_that(log("a"), throws_error())
#' expect_error(log("a"))
#' expect_that(log("a"), throws_error("Non-numeric argument"))
#' expect_error(log("a"), "Non-numeric argument")
throws_error <- function(regexp = NULL) {
  function(expr) {
    res <- try(force(expr), TRUE)
    
    no_error <- !inherits(res, "try-error")
    if (no_error) {
      return(expectation(FALSE, "code did not generate an error"))
      
    } 
    
    if (!is.null(regexp)) {
      matches(regexp)(res)
    } else {
      expectation(TRUE, "")
    }
  }
} 
#' @export
#' @rdname throws_error
#' @inheritParams expect_that
expect_error <- function(object, regexp = NULL, info = NULL, label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, throws_error(regexp), info = info, label = label)
}

#' Expectation: does expression give a warning?
#'
#' Needs to match at least one of the warnings produced by the expression.
#' 
#' @param regexp optional regular expression to match. If not specified, just
#'   asserts that expression gives some warning.
#' @family expectations
#' @export
#' @importFrom evaluate is.warning
#' @examples
#' expect_that(warning("a"), gives_warning())
#' expect_that(warning("a"), gives_warning("a"))
gives_warning <- function(regexp = NULL) {
  function(expr) {
    res <- evaluate(substitute(expr), parent.frame())
    warnings <- vapply(Filter(is.warning, res), "[[", "message", FUN.VALUE=character(1))
    if (!is.null(regexp) && length(warnings) > 0) {
      matches(regexp, all = FALSE)(warnings)
    } else {
      expectation(
        length(warnings) > 0,
        "no warnings given"
      )
    }
  }
}
#' @export
#' @rdname gives_warning
#' @inheritParams expect_that
expect_warning <- function(object, regexp = NULL, info = NULL,
                           label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, gives_warning(regexp), info = info, label = label)
}

#' Expectation: does expression show a message?
#'
#' Needs to match at least one of the messages produced by the expression.
#' 
#' @param regexp optional regular expression to match. If not specified, just
#'   asserts that expression shows some message.
#' @family expectations
#' @export
#' @importFrom evaluate evaluate is.message
#' @examples
#' expect_that(message("a"), shows_message())
#' expect_that(message("a"), shows_message("a"))
shows_message <- function(regexp = NULL) {
  function(expr) {
    res <- evaluate(substitute(expr), parent.frame())
    messages <- vapply(Filter(is.message, res), "[[", "message", FUN.VALUE=character(1))
    if (!is.null(regexp) && length(messages) > 0) {
      matches(regexp, all = FALSE)(messages)
    } else {
      expectation(
        length(messages) > 0,
        "no messages shown"
      )
    }
  }
} 
#' @export
#' @rdname shows_message
#' @inheritParams expect_that
expect_message <- function(object, regexp = NULL, info = NULL,
                           label = NULL) {
  if (is.null(label)) {
    label <- find_expr("object")
  }
  expect_that(object, shows_message(regexp), info = info, label = label)
}

#' Expectation: does expression take less than a fixed amount of time to run?
#' 
#' This is useful for performance regression testing.
#' 
#' @family expectations
#' @export
#' @param amount maximum duration in seconds
takes_less_than <- function(amount) {
  function(expr) {
    duration <- system.time(force(expr))["elapsed"]
    
    expectation(
      duration < amount,
      str_c("took ", duration, " seconds, which is more than ", amount)
    )
  }
}
