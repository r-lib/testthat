#' Run all of the tests in a directory.  
#' 
#' Test files start with \code{test-} and are executed in alphabetical order 
#' (but they shouldn't have dependencies). Helper files start with 
#' \code{helper-} and loaded before any tests are run.
test_dir <- function(path) {
  tests <- dir(path, "^test-.*\\.[rR]", full.names = TRUE)
  tests <- sort(tests)

  helpers <- dir(path, "^helper-.*\\.[rR]", full.names = TRUE)
  
  cur_suite <- test_suite()
  new_suite <- SummarySuite$clone()
  change_suite_to(new_suite)
  
  new_suite$start_suite()
  lapply(helpers, source)
  lapply(tests, source)
  new_suite$end_suite()
  
  change_suite_to(cur_suite)
  invisible(new_suite)
}