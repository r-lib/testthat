#' Test reporter: minimal.
#' 
#' The minimal test reporter provides the absolutely minimum amount of 
#' information: whether each expectation has succeeded, failed or experienced
#' an error.  If you want to find out what the failures and errors actually
#' were, you'll need to run a more informative test reporter.
#'
#' @name MinimalReporter
#' @export
#' @keywords debugging
NULL

MinimalReporter$do({
  self$add_result <- function(result) { 
    if (result$passed) {
      cat(colourise(".", fg = "light green"))
    } else {
      self$failed <- TRUE
      if (result$error) {
        cat(colourise("F", fg = "red"))
      } else {
        cat(colourise("E", fg = "red"))
      }
    }
  }
  
  self$end_reporter <- function() {
    cat("\n")
  }
})