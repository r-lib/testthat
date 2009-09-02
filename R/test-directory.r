#' Run all of the tests in a directory.  Test files start with test-
test_dir <- function(path) {
  files <- dir(path, "^test-.*\\.[rR]", full.names = TRUE)
  
  
  
}