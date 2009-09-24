is_a <- function(class) {
  function(x) {
    expectation(
      inherits(x, class),
      paste("is not a ", class, sep = "")
    )
  }
}


is_true <- function() {
  function(x) {
    expectation(
      identical(x, TRUE),
      "isn't true"
    )
  }
}


is_false <- function() {
  function(x) {
    expectation(
      identical(x, FALSE),
      "isn't false"
    )
  }
}


equals <- function(expected) {
  name <- deparse(substitute(expected))
  function(actual) {
    expectation(
      identical(all.equal(expected, actual), TRUE),
      paste("not equal to ", name, sep = "")
    )
  }
}

is_identical_to <- function(expected) {
  name <- deparse(substitute(expected))
  function(actual) {
    expectation(
      identical(actual, expected),
      paste("is not not identical to ", name, sep = "")
    )
  }
}


matches <- function(regexp) {
  function(char) {
    expectation(
      all(grepl(regexp, char)),
      paste("does not match ", regexp, sep = "")
    )
  }  
}


prints_text <- function(regexp) {
  function(expr) {
    output <- capture.output(force(expr))
    matches(regexp)(output)
  }  
}


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

takes_less_than <- function(amount, unit) {
  function(expr) {
    duration <- system.time(force(expr))["elapsed"]
    
    expectation(
      duration < amount,
      paste("took more than ", amount, " seconds", sep = "")
    )
  }
}