test_that("multiplication works", {
  n_tests <- function(n) {
    for (i in 1:n) {
      test_that(paste0("run ", i), {
        suceed()
      })
    }
  }
  expect_snapshot(
    {
      show_all <- SlowReporter$new(min_time = 0)
      with_reporter(show_all, n_tests(10))
    },
    transform = \(x) gsub("\\d.\\d\\ds", "-.--s", x),
  )
})
