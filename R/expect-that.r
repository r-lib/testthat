expect_that <- function(object, test) {
  name <- deparse(substitute(object))
  results <- test(object)
  
  test_suite$add_result(results)
}

context <- function(desc) {
  test_suite$end_context()
  test_suite$start_context(desc)
}

test_that <- function(desc, code) {
  test_suite$start_test(desc)
  
  env <- new.env(parent = globalenv())
  eval(substitute(code), env)
  test_suite$end_test()
}

expect_result <- function(passed, message) {
  structure(
    list(passed = passed, message = message), 
    class = "expect_result"
  )
}

print.expect_result <- function(x, ...) cat(format(x), "\n")
format.expect_result <- function(x, ...) {
  if (x$passed) {
    "As expected."
  } else {
    paste("Not expected: ", x$message, ".", sep = "")
  }
}

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