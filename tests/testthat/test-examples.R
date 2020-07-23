test_that("test_examples works with installed packages", {
  local_edition(2)

  local_mock(test_rd = identity)
  expect_true(length(test_examples()) > 1)
})

test_that("test_examples fails if no examples", {
  withr::local_envvar(list(TESTTHAT_PKG = ""))
  expect_error(test_examples("asdf"), "Could not find examples")
})
