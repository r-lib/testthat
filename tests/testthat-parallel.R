library(testthat)

# We don't currently do this in covr, because covr does not seem to
# work with parallel tests.

if (Sys.getenv("R_COVR", "") == "") {
  withr::with_envvar(
    c(TESTTHAT_PARALLEL = "true"),
    test_check("testthat")
  )
}
