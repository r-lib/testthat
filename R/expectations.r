is_a <- function(class) {
  function(x) {
    expect_result(
      inherits(x, class),
      paste("is not a ", class, sep = "")
    )
  }
}


is_true <- function() {
  function(x) {
    expect_result(
      identical(x, TRUE),
      "isn't true"
    )
  }
}


is_false <- function() {
  function(x) {
    expect_result(
      passed = identical(x, FALSE),
      message = "isn't false"
    )
  }
}


equals <- function(expected) {
  name <- deparse(substitute(expected))
  function(actual) {
    expect_result(
      passed = identical(all.equal(expected, actual), TRUE),
      message = paste("does not equal ", name, sep = "")
    )
  }
}


matches <- function(regexp) {
  function(char) {
    expect_result(
      passed = all(grepl(regexp, char)),
      message = paste("does not match ", regexp, sep = "")
    )
  }  
}


prints <- function(regexp) {
  function(expr) {
    output <- capture.output(force(expr))
    matches(regexp)(output)
  }  
}


throws_error <- function(message = NULL) {
  function(expr) {
    res <- try(force(expr), TRUE)
    if (!is.null(message)) {
      matches(message)(res)
    } else {
      is_a("try-error")(res)
    }
  }
} 