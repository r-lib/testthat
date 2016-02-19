context("compare.time")

test_that("both POSIXt types are compatible", {
  x1 <- Sys.time()
  x2 <- as.POSIXlt(x1)
  expect_true(compare(x1, x2)$equal)
  expect_true(compare(x2, x1)$equal)
})

test_that("base lengths must be identical", {
  x1 <- Sys.time()
  x2 <- c(x1, x1 - 3600)

  expect_match(compare(x1, x2)$message, "1 vs 2")
})

test_that("tzones must be identical", {
  t1 <- ISOdatetime(2016,2,29,12,13,14,'EST')
  t2 <- ISOdatetime(2016,2,29,12,13,14,'US/Eastern')

  expect_match(compare(t1, t2)$message, '"tzone": 1 string mismatch')
})
