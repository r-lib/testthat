test_that("can use failing condition expectation inside `expect_snapshot()`", {
  local_edition(3)
  expect_snapshot(expect_error(NULL))
})
