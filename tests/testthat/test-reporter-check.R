test_that("basic report works", {
  local_reproducible_output(unicode = TRUE)

  expect_known_output(
    with_reporter(
      CheckReporter$new(),
      test_one_file(test_path("reporters/tests.R"))
    ),
    test_path("reporters/check.txt")
  )

  rds <- test_path("testthat-problems.rds")
  expect_true(file.exists(rds))
  unlink(rds)
})
