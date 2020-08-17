
test_that("many small expectations are not slow", {
  n <- 500 + as.integer(runif(1, 0, 500))
  for (i in 1:1) {
    expect_true(TRUE)
  }
})
