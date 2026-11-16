test_that("produces useful output", {
  n_tests <- function(n) {
    for (i in 1:n) {
      test_that(paste0("run ", i), {
        succeed()
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
  expect_snapshot(
    {
      show_all <- SlowReporter$new(min_time = 0)
      with_reporter(show_all, n_tests(12))
    },
    transform = \(x) {
      x <- gsub("\\d.\\d\\ds] : run \\d\\d?", "-.--s] : run --", x)
      gsub("(tests: +)\\d.\\d\\ds", "\\1-.--s", x)
    }
  )
})
