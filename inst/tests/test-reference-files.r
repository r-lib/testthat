context("Reference testing")
# setwd("/usr/people/hiemstra/software/testthat/test_script/tests")

test1 = test_reference_change("{a<-runif(1)
                               b<-runif(2)}", savePrefix = "random")
test2 = test_reference_change("{a<-1
                               b<-3}", savePrefix = "test")
test_that("Reference stuff works", {
  expect_that(matches_ref_current(test1), is_false())
  expect_that(matches_ref_current(test2), is_true())
})

# See if working with the environments is robust
dum = function(expr) {  
  return(test_reference_change(expr, savePrefix = "refRobust_func"))
}
val = test_reference_change("{a<-1
                             b<-3}", "refRobust")
val_fromfunc = dum("{a<-1
           b<-3}")

test_that("The expression is properly passed on through the functions", {
  expect_that(val, equals(val_fromfunc))
})

# Check if feeding a non-character expression leads to an error
test_that("Using a non-character expression leads to an error", {
  expect_that(test_reference_change({a<-1
                                     b<-3}, "refError"), throws_error())
})

# Check if escaped quotation marks pose any problem
val = test_reference_change("{
  a = \"spam\"}", "refEscape")

test_that("Escaping quotation marks works", {
  expect_that(matches_ref_current(val), is_true())
})
