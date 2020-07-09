test_that("produces useful output", {
  local_reproducible_output(unicode = TRUE)

  expect_known_output(
    with_reporter(
      StopReporter$new(stop_reporter = FALSE),
      test_one_file(test_path("reporters/tests.R"))
    ),
    test_path("reporters/stop.txt")
  )
})

test_that("stop reporter stops at first failure", {
  local_reproducible_output(unicode = TRUE)

  expect_known_output(
    with_reporter(
      StopReporter$new(),
      test_one_file(test_path("reporters/fail.R"))
    ),
    test_path("reporters/stop-first.txt")
  )
})
