library(testthat)

withr::with_envvar(
  c(TESTTHAT_PARALLEL = "true"),
  test_check("testthat")
)
