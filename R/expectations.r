#' Expectation: does the object inherit from a class?
#'
#' Tests whether or not an object inherits from any of a list of classes. 
#'
#' @param class character vector of class names
#' @seealso \code{\link{inherits}}
#' @export
#' @examples
#' expect_that(1, is_a("numeric"))
#' a <- matrix(1:10, nrow = 5)
#' expect_that(a, is_a("matrix"))
#'
#' expect_that(mtcars, is_a("data.frame"))
#' # alternatively for classes that have an is method
#' expect_that(is.data.frame(mtcars), is_true())
#' # doesn't read quite as nicely
is_a <- function(class) {
  function(x) {
    expectation(
      inherits(x, class),
      paste("is not a ", class, sep = "")
    )
  }
}


#' Expectation: is the object true?
#' 
#' This is a fall-back expectation that you can use when none of the other
#' more specific expectations apply. The disadvantage is that you may get
#' a less informative error message.
#'
#' @seealso \code{\link{is_false}} for complement
#' @export
#' @examples
#' expect_that(2 == 2, is_true())
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

#' Expectation: is the object false?
#' 
#' A useful fall-back expectation like \code{\link{is_true}}
#' 
#' @export
#' @examples
#' expect_that(3 == 2, is_false())
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

#' Expectation: is the object equal (with numerical tolerance) to a value?
#'
#' Comparison performed using \code{\link{all.equal}}.
# 
#' @param expected expected value
#' @param ... other values passed to \code{\link{all.equal}}
#' @export
#' @examples
#' a <- 10
#' expect_that(a, equals(10))
#'
#' # Use equals() when testing for numeric equality
#' sqrt(2) ^ 2 - 1
#' expect_that(sqrt(2) ^ 2, equals(2))
#' # Neither of these forms taken floating point representation errors into
#' # account
#' \dontrun{
#' expect_that(sqrt(2) ^ 2 == 2, is_true())
#' expect_that(sqrt(2) ^ 2, is_identical_to(2))
#' }
equals <- function(expected, ...) {
  name <- paste(deparse(substitute(object), width = 500), collapse = "\n")
  function(actual) {
    same <- all.equal(expected, actual, ...)
    expectation(
      identical(same, TRUE),
      str_c("not equal to ", name, "\n", str_c(same, collapse = "\n"))
    )
  }
}

#' Expectation: is the object equivalent to a value?
#' This expectation tests for equivalency: are two objects equal once their
#' attributes have been removed.
#' 
#' @param expected expected value
#' @export
is_equivalent_to <- function(expected) {
  function(actual) {
    equals(expected, check.attributes = FALSE)(actual)
  } 
}


#' Expectation: is the object identical to another?
#'
#' Comparison performed using \code{\link{identical}}.
#' 
#' @param expected expected value
#' @export
#' @examples
#' a <- letters[1:3]
#' expect_that(a, is_identical_to(c("a", "b", "c")))
#' 
#' # Identical does not take into account numeric tolerance
#' \dontrun{
#' expect_that(sqrt(2) ^ 2, is_identical_to(2))
#' }
is_identical_to <- function(expected) {
  name <- paste(deparse(substitute(object), width = 500), collapse = "\n")
  function(actual) {
    expectation(
      identical(actual, expected),
      paste("is not not identical to ", name, sep = "")
    )
  }
}


#' Expectation: does string match regular expression?
#' 
#' If the object to be tested has length greater than one, all elements of 
#' the vector must match the pattern in order to pass.
#'
#' @param regexp regular expression to test against
#' @param ... other arguments passed to \code{\link{grepl}}
#' @export
#' @examples 
#' expect_that("Testing is fun", matches("fun"))
#' expect_that("Testing is fun", matches("f.n"))
matches <- function(regexp, ...) {
  function(char) {
    expectation(
      all(grepl(regexp, char, ...)),
      paste("does not match ", regexp, sep = "")
    )
  }  
}

#' Expectation: does printed output match a regular expression?
#' 
#' @param regexp regular expression to test against
#' @param ... other arguments passed to \code{\link{grepl}}
#' @export
#' @examples 
#' str(mtcars)
#' expect_that(str(mtcars), prints_text("32 obs"))
#' expect_that(str(mtcars), prints_text("11 variables"))
prints_text <- function(regexp, ...) {
  function(expr) {
    output <- paste(capture.output(force(expr)), collapse = "")
    matches(regexp, ...)(output)
  }  
}

#' Expectation: does expression throw an error?
#' 
#' @param regexp optional regular expression to match. If not specified, just
#'   asserts that expression throws some error.
#' @export
#' @examples
#' expect_that(log("a"), throws_error())
#' expect_that(log("a"), throws_error("Non-numeric argument"))
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
      paste("took more than ", amount, " seconds", sep = "")
    )
  }
}