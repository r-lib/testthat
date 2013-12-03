context("MultiReporter")

test_that("MultiReporter", {
  reports <- lapply(seq_len(3), function(x) ListReporter$new())
  reporter <- MultiReporter$new(reporters = reports)
  
  test_file("context.r", reporter)

  dfs <- lapply(reports, function(x) x$get_summary())
  dfs2 <- lapply(dfs, function(x) { 
      x$user <- x$system  <- x$real <- NULL
      x
  })

  expect_true(all(sapply(dfs2, function(x) identical(dfs2[[1]], x) )))
})

