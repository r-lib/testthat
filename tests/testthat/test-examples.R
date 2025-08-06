test_that("test_examples works with installed packages", {
  local_edition(2)

  local_mocked_bindings(test_rd = identity)
  expect_true(length(test_examples()) > 1)
})

test_that("test_examples fails if no examples", {
  withr::local_envvar(TESTTHAT_PKG = "")
  expect_snapshot(error = TRUE, test_examples("asdf"))
})
