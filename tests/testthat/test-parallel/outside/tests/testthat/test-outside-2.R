
stop("Error outside of test_that()")

test_that("this fails", {
  expect_equal(Sys.getpid(), 0L)
})
