context("Reference testing")
# setwd("/usr/people/hiemstra/software/testthat/test_script/tests")

test_that("Reference stuff works", {
  expect_that(is_unchanged("{a<-runif(1)
                               b<-runif(2)}", savePrefix = "random"), is_false())
  expect_that(is_unchanged("{a<-1
                               b<-3}", savePrefix = "test"), is_true())
})

# See if working with the environments is robust
dum = function(expr) {  
  return(is_unchanged(expr, savePrefix = "refRobust_func"))
}
val = is_unchanged("{a<-1
                             b<-3}", "refRobust")
val_fromfunc = dum("{a<-1
           b<-3}")

test_that("The expression is properly passed on through the functions", {
  expect_that(val, equals(val_fromfunc))
})

# Check if feeding a non-character expression leads to an error
test_that("Using a non-character expression leads to an error", {
  expect_that(is_unchanged({a<-1
                            b<-3}, "refError"), throws_error())
})

# Check if escaped quotation marks pose any problem
test_that("Escaping quotation marks works", {
  expect_that(is_unchanged("{
          a = \"spam\"}", "refEscape"), is_true())
})
