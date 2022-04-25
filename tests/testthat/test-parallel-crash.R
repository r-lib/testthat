test_that("crash", {
  # https://github.com/r-lib/rlang/commit/c84d52b6
  skip_if_not_installed("rlang", "1.0.1.9000")

  skip_on_cran()
  skip_on_covr()
  withr::local_envvar(TESTTHAT_PARALLEL = "TRUE")

  do <- function() {
    err <- NULL
    tryCatch(
      testthat::test_local(".", reporter = "silent", stop_on_failure = FALSE),
      error = function(e) err <<- e
    )
    err
  }

  pkg <- test_path("test-parallel", "crash")
  err <- callr::r(do, wd = pkg)
  expect_s3_class(err, "testthat_process_error")
  expect_equal(err$test_file, "test-crash-3.R")
})
