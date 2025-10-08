test_that("validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_all_equal(mean, 1)
    expect_all_equal(logical(), 1)
    expect_all_equal(1:10, mean)
    expect_all_equal(1:10, 1:2)
  })
})

test_that("can compare atomic vectors", {
  x <- rep(TRUE, 10)
  expect_success(expect_all_equal(x, TRUE))

  x[5] <- FALSE
  expect_snapshot_failure(expect_all_equal(x, TRUE))
})

test_that("can compare named lists", {
  x <- list(a = 1, b = 1, c = 2, d = 1, e = 1)
  expect_snapshot_failure(expect_all_equal(x, list(1)))
})

test_that("has tolerance enabled", {
  expect_success(expect_all_equal(1, 1L))
})

test_that("truncates very long differences", {
  x <- rep(TRUE, 10)
  expect_snapshot_failure(expect_all_equal(x, FALSE))
})

test_that("has TRUE and FALSE helpers", {
  x1 <- rep(TRUE, 10)
  x2 <- rep(FALSE, 10)
  expect_success(expect_all_true(x1))
  expect_success(expect_all_false(x2))
})
