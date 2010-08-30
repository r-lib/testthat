#' Expectation: does the object inherit from a class?
#'
#' Tests whether or not an object inherits from any of a list of classes. 
#'
#' @param class character vector of class names
#' @seealso \code{\link{inherits}}
#' @export  is_a expect_is
#' @aliases is_a expect_is
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
expect_is <- function(actual, expected) {
  expect_that(actual, is_a(expected), label = find_expr("actual"))
}

#' Expectation: is the object true?
#' 
#' This is a fall-back expectation that you can use when none of the other
#' more specific expectations apply. The disadvantage is that you may get
#' a less informative error message.
#'
#' @seealso \code{\link{is_false}} for complement
#' @aliases is_true expect_true
#' @export  is_true expect_true
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
expect_true <- function(actual) {
  expect_that(actual, is_true(), label = find_expr("actual"))
}

#' Expectation: is the object false?
#' 
#' A useful fall-back expectation like \code{\link{is_true}}
#' 
#' @export  is_false expect_false
#' @aliases is_false expect_false
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
expect_false <- function(actual) {
  expect_that(actual, is_false(), label = find_expr("actual"))
}


#' Expectation: is the object equal (with numerical tolerance) to a value?
#'
#' Comparison performed using \code{\link{all.equal}}.
# 
#' @param expected expected value
#' @param label label of expected object used in error messages.  Useful to 
#'   override default (deparsed expected expression) when doing tests in a
#'   loop.
#' @param ... other values passed to \code{\link{all.equal}}
#' @aliases equals expect_equal
#' @export  equals expect_equal
#' @examples
#' a <- 10
#' expect_that(a, equals(10))
#' expect_equal(a, 10)
#'
#' # Use equals() when testing for numeric equality
#' sqrt(2) ^ 2 - 1
#' expect_that(sqrt(2) ^ 2, equals(2))
#' expect_equal(sqrt(2) ^ 2, 2)
#' # Neither of these forms taken floating point representation errors into
#' # account
#' \dontrun{
#' expect_that(sqrt(2) ^ 2 == 2, is_true())
#' expect_that(sqrt(2) ^ 2, is_identical_to(2))
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
expect_equal <- function(actual, expected) {
  expect_that(actual, label = find_expr("actual"),
    equals(expected, label = find_expr("expected")))
}


#' Expectation: is the object equivalent to a value?
#' This expectation tests for equivalency: are two objects equal once their
#' attributes have been removed.
#' 
#' @param expected expected value
#' @param label label of expected object used in error messages.  Useful to 
#'   override default (deparsed expected expression) when doing tests in a
#'   loop.
#' @aliases is_equivalent_to expect_equivalent
#' @export  is_equivalent_to expect_equivalent
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
expect_equivalent <- function(actual, expected) {
  expect_that(actual, label = find_expr("actual"),
    is_equivalent_to(expected, label = find_expr("expected")))
}

#' Expectation: is the object identical to another?
#'
#' Comparison performed using \code{\link{identical}}.
#' 
#' @param expected expected value
#' @param label label of expected object used in error messages.  Useful to 
#'   override default (deparsed expected expression) when doing tests in a
#'   loop.
#' @export  is_identical_to expect_identical
#' @aliases is_identical_to expect_identical
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
expect_identical <- function(actual, expected) {
  expect_that(actual, label = find_expr("actual"),
    is_identical_to(expected, label = find_expr("expected")))
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
#' @aliases matches expect_match
#' @export  matches expect_match
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
expect_match <- function(actual, expected) {
  expect_that(actual, label = find_expr("actual"), matches(expected))
}

#' Expectation: does printed output match a regular expression?
#' 
#' @param regexp regular expression to test against
#' @param ... other arguments passed to \code{\link{grepl}}
#' @export  prints_text expect_output
#' @aliases prints_text expect_output
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
expect_output <- function(actual, expected) {
  expect_that(actual, label = find_expr("actual"), prints_text(expected))
}

#' Expectation: does expression throw an error?
#' 
#' @param regexp optional regular expression to match. If not specified, just
#'   asserts that expression throws some error.
#' @export  throws_error expect_error
#' @aliases throws_error expect_error
#' @examples
#' expect_that(log("a"), throws_error())
#' expect_error(log("a"))
#' expect_that(log("a"), throws_error("Non-numeric argument"))
#' expect_error(log("a"), "Non-numeric argument")
throws_error <- function(regexp = NULL) {
  function(expr) {
    res <- try(force(expr), TRUE)
    if (!is.null(regexp)) {
      matches(regexp)(res)
    } else {
      is_a("try-error")(res)
    }
  }
} 
expect_error <- function(actual, expected = NULL) {
  expect_that(actual, label = find_expr("actual"), throws_error(expected))
}

#' Expectation: does expression give a warning?
#'
#' Needs to match at least one of the warnings produced by the expression.
#' 
#' @param regexp optional regular expression to match. If not specified, just
#'   asserts that expression gives some warning.
#' @export  gives_warning expect_warning
#' @aliases gives_warning expect_warning
#' @importFrom evaluate is.warning
#' @examples
#' expect_that(warning("a"), gives_warning())
#' expect_that(warning("a"), gives_warning("a"))
gives_warning <- function(regexp = NULL) {
  function(expr) {
    res <- evaluate(substitute(expr), parent.frame())
    warnings <- sapply(Filter(is.warning, res), "[[", "message")
    if (!is.null(regexp)) {
      matches(regexp, all = FALSE)(warnings)
    } else {
      expectation(
        length(warnings) > 0,
        "no warnings given"
      )
    }
  }
} 
expect_warning <- function(actual, expected = NULL) {
  expect_that(actual, label = find_expr("actual"), gives_warning(expected))
}

#' Expectation: does expression show a message?
#'
#' Needs to match at least one of the messages produced by the expression.
#' 
#' @param regexp optional regular expression to match. If not specified, just
#'   asserts that expression shows some message.
#' @export  shows_message expect_message
#' @aliases shows_message expect_message
#' @importFrom evaluate evaluate is.message
#' @examples
#' expect_that(message("a"), shows_message())
#' expect_that(message("a"), shows_message("a"))
shows_message <- function(regexp = NULL) {
  function(expr) {
    res <- evaluate(substitute(expr), parent.frame())
    warnings <- sapply(Filter(is.message, res), "[[", "message")
    if (!is.null(regexp)) {
      matches(regexp, all = FALSE)(warnings)
    } else {
      expectation(
        length(warnings) > 0,
        "no warnings given"
      )
    }
  }
} 
expect_message <- function(actual, expected = NULL) {
  expect_that(actual, label = find_expr("actual"), shows_message(expected))
}


#' Expectation: does expression take less than a fixed amount of time to run?
#' 
#' This is useful for performance regression testing.
#' 
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
