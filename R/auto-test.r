#' Watches code and tests for changes, rerunning tests as appropriate.
#' 
#' The idea behind \code{auto_test} is that you just leave it running while
#' you develop your code.  Everytime you save a file it will be automatically 
#' tested and you can easily see if your changes have caused any test
#'  failures.
#' 
#' The current strategy for rerunning tests is as follows:
#' 
#' \itemize{
#'  \item if any code has changed, then those files are reloaded and all tests
#'    rerun
#'  \item otherwise, each new or modified test is run
#' }
#' In the future, \code{auto_test} might implement on of the following more 
#' intelligent alternatives:
#' 
#' \itemize{
#'  \item Use codetools to build up dependency tree and then rerun tests only
#'    when a dependency changes.
#' 
#'  \item Mimic ruby's autotest and rerun only failing tests until they pass,
#'    and then rerun all test.
#' }
# 
#' @seealso \code{\link{auto_test_package}}
#' @export
#' @param code_path path to directory containing code
#' @param test_path path to directory containing tests
#' @param reporter test reporter to use
#' @keywords debugging
auto_test <- function(code_path, test_path, reporter = "summary") {
  reporter <- find_reporter(reporter)

  # Start by loading all code and running all tests
  source_dir(code_path)
  test_dir(test_path)
  
  starts_with <- function(string, prefix) {
    substr(string, 1, nchar(prefix)) == prefix
  }
  
  # Next set up watcher to monitor changes
  watcher <- function(added, deleted, modified) {
    changed <- c(added, modified)
    
    tests <- changed[starts_with(changed, test_path)]
    code <- changed[starts_with(changed, code_path)] 
    
    if (length(code) > 0) {
      # Reload code and rerun all tests
      cat("Changed code: ", paste(basename(code), collapse = ", "), "\n")
      cat("Rerunning all tests\n")
      lapply(code, source, chdir = TRUE)
      test_dir(test_path)
    } else if (length(tests) > 0) {
      # If test changes, rerun just that test
      cat("Rerunning tests: ", paste(basename(tests), collapse = ", "), "\n")      
      with_reporter(reporter$clone(), lapply(tests, source, chdir = TRUE))
    }
    
    TRUE
  }
  watch(c(code_path, test_path), watcher)
  
}

#' Watches a package for changes, rerunning tests as appropriate.
#' 
#' @param path path to package 
#' @export
#' @param reporter test reporter to use
#' @keywords debugging
#' @seealso \code{\link{auto_test}} for details on how method works
auto_test_package <- function(path, reporter = "summary") {
  auto_test(file.path(path, "R"), file.path(path, "tests"), reporter)
}

