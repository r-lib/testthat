test_that("captures error before first test", {
  local_reproducible_output(unicode = TRUE)

  expect_known_output(
    test_file(
      test_path("reporters/error-setup.R"),
      ProgressReporter$new(show_praise = FALSE)
    ),
    test_path("reporters/progress-error-setup.txt")
  )
})

test_that("gracefully handles multiple contexts", {
  local_reproducible_output(unicode = TRUE)
  local_edition(2)

  expect_known_output(
    test_file(
      test_path("reporters/context.R"),
      ProgressReporter$new(show_praise = FALSE)
    ),
    test_path("reporters/progress-context.txt")
  )
})

test_that("captures backtraces", {
  local_reproducible_output(unicode = TRUE)

  expect_known_output(
    test_file(
      test_path("reporters/backtraces.R"),
      ProgressReporter$new(show_praise = FALSE, min_time = Inf, update_interval = 0)
    ),
    test_path("reporters/progress-backtraces.txt")
  )
})
