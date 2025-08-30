# We can't use expect_snapshot_reporter() here because it uses test_one_file()
# which wraps code in `test_code()` which turns the error into a test failure
# It also only captures the output, but we also want to see the error

test_that("produces useful output", {
  run_tests <- \() source(test_path("reporters/tests.R"))
  expect_snapshot(with_reporter("stop", run_tests()), error = TRUE)
})

test_that("can suppress praise", {
  run_tests <- \() source(test_path("reporters/successes.R"))
  expect_silent(with_reporter(StopReporter$new(praise = FALSE), run_tests()))
})

test_that("works nicely with nested tests", {
  run_tests <- \() source(test_path("reporters/nested.R"))
  expect_snapshot(with_reporter("stop", run_tests()), error = TRUE)
})

test_that("errors when needed", {
  r <- StopReporter$new()
  r$start_test()
  expect_no_error(r$end_test())

  r$start_test()
  r$n_fail <- 1
  r$n_success <- 0
  expect_snapshot(error = TRUE, r$end_test())
})
