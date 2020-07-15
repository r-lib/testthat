test_that("expect_null works", {
  expect_success(expect_null(NULL))
  expect_snapshot_failure(expect_null(1L))
  expect_snapshot_failure(expect_null(environment()))
})
