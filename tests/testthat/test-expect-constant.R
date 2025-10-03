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
  expect_failure(expect_true(FALSE, "NOPE"), "NOPE")
  expect_failure(expect_false(TRUE, "YUP"), "YUP")
})

test_that("expect_null works", {
  x <- NULL
  df <- data.frame(1:10)

  expect_success(expect_null(x))
  expect_snapshot_failure(expect_null(df))
})

test_that("returns the input value", {
  res_one <- expect_true(TRUE, required = "one")
  expect_equal(res_one, TRUE)

  res_any <- expect_true(TRUE, required = "any")
  expect_equal(res_any, TRUE)

  res_all <- expect_true(TRUE, required = "all")
  expect_equal(res_all, TRUE)
})

test_that("expect_true(required = 'all')", {
  expect_success(
    expect_true(TRUE, required = "all")
  )
  expect_success(
    expect_true(c(TRUE, TRUE), required = "all")
  )

  expect_snapshot_failure(
    expect_true(FALSE, required = "all")
  )
  expect_snapshot_failure(
    expect_true(c(FALSE, FALSE), required = "all")
  )
  expect_snapshot_failure(
    expect_true(c(TRUE, FALSE), required = "all")
  )
  expect_snapshot_failure(
    expect_true("not logical", required = "all")
  )
  expect_failure(
    expect_true(c(TRUE, FALSE), required = "all", label = "FOO"),
    "FOO"
  )
})

test_that("expect_true(required = 'any')", {
  expect_success(
    expect_true(TRUE, required = "any")
  )
  expect_success(
    expect_true(c(TRUE, TRUE), required = "any")
  )
  expect_success(
    expect_true(c(FALSE, TRUE), required = "any")
  )

  expect_snapshot_failure(
    expect_true(FALSE, required = "any")
  )
  expect_snapshot_failure(
    expect_true(c(FALSE, FALSE), required = "any")
  )
  expect_snapshot_failure(
    expect_true("not logical", required = "any")
  )
  # Label works
  expect_failure(
    expect_true(c(FALSE, FALSE), required = "any", label = "FOO"),
    "FOO"
  )
})
