test_that("MultiReporter", {
  reports <- lapply(seq_len(3), function(x) ListReporter$new())
  reporter <- MultiReporter$new(reporters = reports)

  with_reporter(reporter, test_one_file("context.R"))

  dfs <- lapply(reports, function(x) as.data.frame(x$get_results()))

  expect_equal(dfs[[2]][1:7], dfs[[1]][1:7])
  expect_equal(dfs[[3]][1:7], dfs[[1]][1:7])
})
