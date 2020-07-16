test_that("logical tests act as expected", {
  local_output_override()

  expect_success(expect_true(TRUE))
  expect_success(expect_false(FALSE))

  expect_snapshot_failure(expect_true(FALSE))
  expect_snapshot_failure(expect_false(TRUE))
})

test_that("logical tests ignore attributes", {
  expect_success(expect_true(c(a = TRUE)))
  expect_success(expect_false(c(a = FALSE)))
})

test_that("additional info returned in message", {
  expect_failure(expect_true(FALSE, "NOPE"), "\nNOPE")
  expect_failure(expect_false(TRUE, "YUP"), "\nYUP")
})

test_that("expect_null works", {
  local_output_override()

  expect_success(expect_null(NULL))
  expect_snapshot_failure(expect_null(1L))
  expect_snapshot_failure(expect_null(environment()))
})

