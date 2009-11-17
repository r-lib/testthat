#' Access current reporter
#' 
#' @keywords internal
#' @aliases reporter_accessors test_reporter change_reporter_to
reporter_accessors <- local({
  # Default has to be the stop reporter, since it is this that will be run by
  # default from the command line and in R CMD test.
  reporter <- StopReporter$clone()
  
  set <- function(value) {
    reporter <<- value
  }
  get <- function() {
    reporter
  }
  
  list(get = get, set = set)
})
test_reporter <- reporter_accessors$get
change_reporter_to <- reporter_accessors$set

#' Execute code in specified reporter
#'
#' Changes global reporter to that specified, runs code and the returns
#' global reporter back to previous value.
#'
#' @keywords internal
#' @param reporter test reporter to use
#' @param code code block to execute
with_reporter <- function(reporter, code) {
  cur_reporter <- test_reporter()
  change_reporter_to(reporter)
  on.exit(change_reporter_to(cur_reporter))
  
  reporter$start_reporter()
  force(code)
  reporter$end_reporter()
  
  invisible(reporter)
}