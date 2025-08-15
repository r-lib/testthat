local_parallel_test_config <- function(frame = caller_env()) {
  skip_on_covr()
  withr::local_envvar(
    c(
      TESTTHAT_PARALLEL = "TRUE",
      TESTTHAT_GHA_SUMMARY = "FALSE"
    ),
    .local_envir = frame
  )
}

capture_parallel_error <- function(path) {
  tryCatch(
    capture.output(suppressMessages(testthat::test_local(
      path,
      reporter = "summary"
    ))),
    error = function(e) e
  )
}
