test_that("crash", {
  local_parallel_test_config()
  skip_on_cran()
  skip_if_not(getRversion() >= "4.4.0")

  pkg <- test_path("test-parallel", "crash")
  err <- callr::r(
    function() {
      tryCatch(
        testthat::test_local(
          ".",
          reporter = "summary",
          stop_on_failure = FALSE
        ),
        error = function(e) e
      )
    },
    wd = pkg
  )
  expect_s3_class(err, "testthat_process_error")
  expect_equal(err$test_file, "test-crash-3.R")
})
