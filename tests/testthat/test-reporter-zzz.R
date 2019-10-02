test_that("can locate reporter from name", {
  expect_equal(find_reporter("minimal"), MinimalReporter$new())
  expect_equal(find_reporter("summary"), SummaryReporter$new())
})

test_that("useful error message if can't find reporter", {
  expect_error(
    find_reporter(c("summary", "blah")),
    "Can not find test reporter blah"
  )
})

test_that("character vector yields multi reporter", {
  expect_equal(
    find_reporter(c("summary", "stop")),
    MultiReporter$new(
      reporters = list(
        SummaryReporter$new(),
        StopReporter$new()
      )
    )
  )
})
