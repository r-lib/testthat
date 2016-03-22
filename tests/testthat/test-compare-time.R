context("compare.time")

# Metadata ----------------------------------------------------------------

test_that("both POSIXt classes are compatible", {
  x1 <- Sys.time()
  x2 <- as.POSIXlt(x1)
  expect_true(compare(x1, x2)$equal)
  expect_true(compare(x2, x1)$equal)
})

test_that("other classes are not", {
  expect_match(compare(Sys.time(), 1)$message, "POSIXct/POSIXt vs numeric")
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

# Values ------------------------------------------------------------------

test_that("two identical vectors are the same", {
  x <- Sys.time()
  expect_true(compare(x, x)$equal)
})

test_that("two different values are not the same", {
  x1 <- Sys.time()
  x2 <- x1 + 3600
  expect_false(compare(x1, x2)$equal)
})

test_that("uses all.equal tolerance", {
  x1 <- structure(1457284588.83749, class = c("POSIXct", "POSIXt"))
  x2 <- structure(1457284588.837, class = c("POSIXct", "POSIXt"))
  expect_true(compare(x1, x2)$equal)
})
