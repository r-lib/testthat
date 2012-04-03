context("Reference testing")

test_that("Reference stuff works", {
  expect_that(is_unchanged(quote({a<-runif(1)
                               b<-runif(2)}), savePrefix = "random"), is_false())
  expect_that(is_unchanged(quote({a<-1
                               b<-3}), savePrefix = "test"), is_true())
})

# Check if feeding a non-character expression leads to an error
test_that("Using a non-quoted expression leads to an error", {
  expect_that(is_unchanged({a<-1
                            b<-3}, "refError"), throws_error())
})
test_that("Using a character expression leads to an error", {
  expect_that(is_unchanged("{a<-1
                            b<-3}", "refError"), throws_error())
})
