test_that("logical tests act as expected", {
  df <- data.frame(1:10)

  expect_success(expect_true(TRUE))
  expect_snapshot_failure(expect_true(df))

  expect_success(expect_false(FALSE))
  expect_snapshot_failure(expect_false(df))
})

test_that("logical tests ignore attributes", {
  expect_success(expect_true(c(a = TRUE)))
  expect_success(expect_false(c(a = FALSE)))
})

test_that("additional info returned in message", {
  expect_snapshot_failure(expect_true(FALSE, "NOPE"))
  expect_snapshot_failure(expect_false(TRUE, "YUP"))
})

test_that("expect_null works", {
  x <- NULL
  df <- data.frame(1:10)

  expect_success(expect_null(x))
  expect_snapshot_failure(expect_null(df))
})

test_that("returns the input value", {
  res <- expect_true(TRUE)
  expect_equal(res, TRUE)
})
