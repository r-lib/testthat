#' Run all of the tests in a directory.  
#' 
#' Test files start with \code{test} and are executed in alphabetical order 
#' (but they shouldn't have dependencies). Helper files start with 
#' \code{helper} and loaded before any tests are run.
#'
#' @param path path to tests
#' @param reporter reporter to use
#' @export
test_dir <- function(path, reporter = "summary") {    
  reporter <- find_reporter(reporter)
  source_dir(path, "^helper.*\\.[rR]$")

  with_reporter(reporter$clone(), {
    source_dir(path, "^test.*\\.[rR]$")    
  })
}

#' Load all source files in a directory.
#' 
#' The expectation is that the files can be sourced in alphabetical order.
#'
#' @param path path to tests
#' @param pattern regular expression used to filter files
#' @param chdir change working directory to path?
#' @keywords internal
#' @export
#' @usage source_dir(path, pattern="\\\\.[rR]$", chdir=TRUE)
source_dir <- function(path, pattern = "\\.[rR]$", chdir = TRUE) {
  files <- sort(dir(path, pattern, full.names = TRUE))
  
  lapply(files, source, chdir = chdir)
}

#' Run all tests in specified file.
#' 
#' @param path path to file
#' @param reporter reporter to use
#' @export
test_file <- function(path, reporter = "summary") {    
  reporter <- find_reporter(reporter)
  with_reporter(reporter$clone(), source(path))
}