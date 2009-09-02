context("Errors")

test_that("captures and stores errors", {
  f()
})

f <- function() g() 
g <- function() stop("I made a mistake", call. = FALSE)  