context("test_examples")

test_that("test_examples works with installed packages", {
  env_test$package <- "testthat"
  on.exit(env_test$package <- NULL)
  with_mock(
    test_rd = identity,
    {
      res <- test_examples()
    }
  )
  expect_true(length(res) > 1)
})
