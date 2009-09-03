#' Run all of the tests in a directory.  Test files start with test- and are
# executed in alphabetical order (but they shouldn't have dependencies)
test_dir <- function(path) {
  files <- dir(path, "^test-.*\\.[rR]", full.names = TRUE)
  files <- sort(files)
  
  cur_suite <- test_suite()
  new_suite <- ChattySuite$clone()
  change_suite_to(new_suite)
  
  lapply(files, source)
  
  change_suite_to(cur_suite)
  invisible(new_suite)
}