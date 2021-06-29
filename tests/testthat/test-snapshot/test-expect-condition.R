test_that("can use failing condition expectation inside `expect_snapshot()`", {
  expect_snapshot(expect_error(NULL))
})
