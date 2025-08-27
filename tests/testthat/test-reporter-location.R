test_that("reporter as expected", {
  expect_snapshot_reporter(LocationReporter$new())
})

test_that("reporter as expected", {
  expect_snapshot_reporter(
    LocationReporter$new(),
    test_path("reporters/nested.R")
  )
})
