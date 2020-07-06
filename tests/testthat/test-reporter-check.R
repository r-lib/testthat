test_that("basic report works", {
  local_reproducible_output(unicode = TRUE)

  expect_known_output(
    test_file(
      test_path("reporters/tests.R"),
      CheckReporter$new()
    ),
    test_path("reporters/check.txt")
  )
})
