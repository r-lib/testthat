#' Run all of the tests in a directory.  
#' 
#' Test files start with \code{test-} and are executed in alphabetical order 
#' (but they shouldn't have dependencies). Helper files start with 
#' \code{helper-} and loaded before any tests are run.
test_dir <- function(path, suite = SummarySuite) {    
  source_dir(path, "^helper-.*\\.[rR]$")

  with_suite(suite$clone(), {
    source_dir(path, "^test-.*\\.[rR]$")    
  })
}

source_dir <- function(path, pattern = "\\.[rR]$", chdir = TRUE) {
  files <- sort(dir(path, pattern, full.names = TRUE))
  
  lapply(files, source, chdir = chdir)
}