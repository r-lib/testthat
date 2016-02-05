context("Reporter")

test_that("can locate reporter from name", {
  expect_that(find_reporter("minimal"), equals(MinimalReporter$new()))
  expect_that(find_reporter("summary"), equals(SummaryReporter$new()))
  expect_that(find_reporter("tap"), equals(TapReporter$new()))
  expect_that(find_reporter("list"), equals(ListReporter$new()))
  expect_that(find_reporter("multi"), equals(MultiReporter$new()))
  expect_that(find_reporter(""), equals(Reporter$new()))
  expect_equal(
    find_reporter("summary+stop"),
    MultiReporter$new(
      reporters = list(SummaryReporter$new(), StopReporter$new())))
  expect_equal(
    find_reporter("teamcity + summary + list"),
    MultiReporter$new(
      reporters = list(TeamcityReporter$new(), SummaryReporter$new(),
                       ListReporter$new())))

  expect_that(find_reporter("blah"),
    throws_error("Can not find test reporter blah"))
})
