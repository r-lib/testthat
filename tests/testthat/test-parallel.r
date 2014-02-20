context("parallelization")

### during make check the R_TESTS env var is defined and point towards
### a given file, so that if we change the directory, R CMD fails because
### it can not find the file anymore
Sys.unsetenv('R_TESTS')

test_that('parallel_test_dir() FORK', {
    
  # can only easily test the FORK implementation
  if (testthat:::on_windows()) {
    message('skipping the parallel_test_dir FORK implementation on Windows')
    return()
  }
  ref <- test_dir('test_dir', reporter = 'silent')
  res <- parallel_test_dir('test_dir', quiet = TRUE)
  
  # compare by converting to data frame and removing the execution times
  df <- as.data.frame(res)[, 1:6]
  dfref <- as.data.frame(ref)[, 1:6]
  expect_identical(df, dfref)
})



test_that('parallel_test_dir() PSOCK', {
  ref <- test_dir('test_dir', reporter = 'silent')
  res <- parallel_test_dir('test_dir', type = 'PSOCK', quiet = TRUE)
  
  # compare by converting to data frame and removing the execution times
  df <- as.data.frame(res)[, 1:6]
  dfref <- as.data.frame(ref)[, 1:6]
  expect_identical(df, dfref)
})


