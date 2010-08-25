context("Reporter")

test_that("can locate reporter from name", {
  expect_that(find_reporter(MinimalReporter),
    is_identical_to(MinimalReporter))
  
  expect_that(find_reporter("minimal"), equals(MinimalReporter))
  expect_that(find_reporter("summary"), equals(SummaryReporter))
  
  expect_that(find_reporter("blah"), 
    throws_error("Can not find test reporter blah"))
})