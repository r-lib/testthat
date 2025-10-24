test_that("basic comparisons work", {
  x <- 10
  expect_success(expect_lt(x, 11))
  expect_snapshot_failure(expect_lt(x, 10))
  expect_success(expect_lte(x, 10))

  expect_success(expect_gt(11, 10))
  expect_snapshot_failure(expect_gt(x, 10))
  expect_success(expect_gte(x, 10))
})

test_that("useful output when numbers are very small", {
  x <- 1e-5
  expect_snapshot_failure(expect_lte(1.1 * x, x))
  expect_snapshot_failure(expect_gt(x, 1.1 * x))
})

test_that("useful output when difference is zero", {
  x <- 100
  expect_snapshot_failure(expect_lt(x, 100))
})

test_that("useful output when differnce is large", {
  x <- 100
  expect_snapshot_failure(expect_lt(x, 0.001))
})

test_that("comparison result object invisibly", {
  out <- expect_invisible(expect_lt(1, 10))
  expect_equal(out, 1)
})

test_that("comparisons with Inf work", {
  expect_success(expect_lt(10, Inf))
  expect_failure(expect_lt(Inf, Inf))
  expect_success(expect_lte(Inf, Inf))

  expect_success(expect_gt(Inf, 10))
  expect_failure(expect_gt(Inf, Inf))
  expect_success(expect_gte(Inf, Inf))

  x <- Inf
  expect_snapshot_failure(expect_lt(x, Inf))
})

test_that("comparisons with NA work", {
  expect_failure(expect_lt(10, NA_real_))
  expect_failure(expect_lt(NA_real_, 10))
  expect_failure(expect_lt(NA_real_, NA_real_))
  expect_failure(expect_lte(NA_real_, NA_real_))

  expect_failure(expect_gt(10, NA_real_))
  expect_failure(expect_gt(NA_real_, 10))
  expect_failure(expect_gt(NA_real_, NA_real_))
  expect_failure(expect_gte(NA_real_, NA_real_))

  x <- NA_real_
  expect_snapshot_failure(expect_lt(x, 10))
})


test_that("comparisons with negative numbers work", {
  expect_success(expect_lt(-5, -2))
  expect_snapshot_failure(expect_gt(-5, -2))
})

test_that("comparisons with POSIXct objects work", {
  time <- as.POSIXct("2020-01-01 01:00:00")
  time2 <- time + 1.5
  expect_success(expect_lt(time, time2))

  expect_snapshot_failure(expect_lt(time2, time))
})

test_that("comparisons with Date objects work", {
  date <- as.Date("2020-01-01")
  date2 <- date + 1
  expect_success(expect_gt(date2, date))
  expect_success(expect_gte(date2, date))

  expect_snapshot_failure(expect_gt(date, date2))
})

test_that("comparisons with character objects work", {
  expect_success(expect_lte("a", "b"))

  expect_snapshot_failure(expect_lte("b", "a"))
})

test_that("comparison must yield a single logical", {
  expect_snapshot(error = TRUE, expect_lt(1:10, 5))
})

test_that("wordy versions are deprecated", {
  expect_warning(expect_less_than(1, 2), "Deprecated")
  expect_warning(expect_more_than(2, 1), "Deprecated")
})
