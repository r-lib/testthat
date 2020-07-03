test_that("captures error before first test", {
  local_reproducible_output(unicode = TRUE)

  expect_known_output(
    test_file(
      test_path("reporters/error-setup.R"),
      ProgressReporter$new(show_praise = FALSE, min_time = Inf)
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
      ProgressReporter$new(show_praise = FALSE, min_time = Inf)
    ),
    test_path("reporters/progress-context.txt")
  )
})

test_that("fails after max_fail tests", {
  local_reproducible_output(unicode = TRUE)

  expect_known_output(
    test_file(
      test_path("reporters/fail-many.R"),
      ProgressReporter$new(show_praise = FALSE, min_time = Inf)
    ),
    test_path("reporters/progress-fail-many.txt")
  )
})

# compact display ---------------------------------------------------------

test_that("fails after max_fail tests", {
  local_reproducible_output(unicode = TRUE)

  expect_known_output(
    test_file(
      test_path("reporters/tests.R"),
      CompactProgressReporter$new()
    ),
    test_path("reporters/compact.txt")
  )
})
