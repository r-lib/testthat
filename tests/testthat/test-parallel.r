context("parallelization")

test_that('parallel_test_dir() FORK', {
    
  # can only easily test the FORK implementation
  if (testthat:::on_windows()) {
    message('skipping the parallel_test_dir FORK implementation on Windows')
    return()
  }
  ref <- test_dir('test_dir', reporter = 'silent')
  res <- parallel_test_dir('test_dir', quiet = TRUE)
  
  # compare by converting to deta frame and removing the execution times
  df <- as.data.frame(res)[, 1:6]
  dfref <- as.data.frame(ref)[, 1:6]
  expect_identical(df, dfref)
})

