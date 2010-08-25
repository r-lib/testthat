if (interactive()) {

  context("Should fail")

  test_that("false is not true (should fail)", {
    expect_that(FALSE, is_true())
  })

  test_that("true is not false (should fail)", {
    expect_that(TRUE, is_false())
  })

  test_that("random errors are caught (should err)", {
    function_that_doesnt_exist()
  })

  f <- function() g() 
  g <- function() stop("I made a mistake", call. = FALSE)

  test_that("errors are captured (should err)", {
    f()
  })
  
}