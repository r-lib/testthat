#' Run all of the tests in a directory.  
#' 
#' Test files start with \code{test-} and are executed in alphabetical order 
#' (but they shouldn't have dependencies). Helper files start with 
#' \code{helper-} and loaded before any tests are run.
test_dir <- function(path) {  
  cur_suite <- test_suite()
  new_suite <- SummarySuite$clone()
  change_suite_to(new_suite)
  
  new_suite$start_suite()
  source_dir(path, "^helper-.*\\.[rR]$")
  source_dir(path, "^test-.*\\.[rR]$")
  new_suite$end_suite()
  
  change_suite_to(cur_suite)
  invisible(new_suite)
}

source_dir <- function(path, pattern = "\\.[rR]$", chdir = TRUE) {
  files <- sort(dir(path, pattern, full.names = TRUE))
  
  lapply(files, source, chdir = chdir)
}