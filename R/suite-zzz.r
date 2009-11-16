#' Access current reporter
#' 
#' @keywords internal
#' @aliases suite_accessors test_suite change_suite_to
suite_accessors <- local({
  # Default has to be the stop suite, since it is this that will be run by
  # default from the command line and in R CMD test.
  suite <- StopSuite$clone()
  
  set <- function(value) {
    suite <<- value
  }
  get <- function() {
    suite
  }
  
  list(get = get, set = set)
})
test_suite <- suite_accessors$get
change_suite_to <- suite_accessors$set

#' Execute code in specified suite
#'
#' Changes global suite to that specified, runs code and the returns
#' global suite back to previous value.
#'
#' @keywords internal
#' @param suite test suite to use
#' @param code code block to execute
with_suite <- function(suite, code) {
  cur_suite <- test_suite()
  change_suite_to(suite)
  on.exit(change_suite_to(cur_suite))
  
  suite$start_suite()
  force(code)
  suite$end_suite()
  
  invisible(suite)
}