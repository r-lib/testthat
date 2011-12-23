context("Reference testing")
# setwd("/usr/people/hiemstra/software/testthat/test_script/tests")

test1 = test_reference_change({a<-runif(1)
                               b<-runif(2)}, savePrefix = "random")
test2 = test_reference_change({a<-1
                               b<-3}, savePrefix = "test")
test_that("Reference stuff works", {
  expect_that(matches_ref_current(test1), is_false())
  expect_that(matches_ref_current(test2), is_true())
})
