#' Test reporter: summary of errors.
#' 
#' This is the most useful reporting reporter as it lets you know both which
#' tests have run successfully, as well as fully reporting information about
#' failures and errors.  It is the default reporting reporter used by 
#' \code{\link{test_dir}} and \code{\link{test_file}}.
#' 
#' As an additional benefit, this reporter will praise you from time-to-time
#' if all your tests pass.
#'
#' @name SummaryReporter
#' @export
#' @keywords debugging
NULL

SummaryReporter$do({
  labels <- c(1:9, letters, LETTERS)
  
  self$start_context <- function(desc) {
    cat(desc, ": ", sep = "")
  }
  
  self$end_context <- function() {
    cat("\n")
  }
  
  self$start_reporter <- function() {
    self$failures <- list()
    self$n <- 0
  }
  
  self$add_result <- function(result) {
    if (result$passed) {
      cat(colourise(".", fg = "light green"))
    } else {
      self$n <- self$n + 1
      
      if (self$n > length(labels)) {
        self$n <- length(labels)
        cat(colourise("F", fg = "red"))
      } else {
        result$test <- self$test
        self$failures[[self$n]] <- result
        cat(colourise(labels[self$n], fg = "red"))
      }
      
    }
  }
  
  self$end_reporter <- function() {
    charrep <- function(char, times) {
      sapply(times, function(i) paste(rep.int(char, i), collapse = ""))
    }
    
    if (self$n == 0) {
      cat("\n")
      if (sample(10, 1) == 1) {
        cat(colourise(sample(.praise, 1), "light green"), "\n", sep = "")
      }
    } else {
      label <- labels[seq_len(self$n)]
      type <- ifelse(sapply(self$failures, "[[", "error"), "Error", "Failure")
      tests <- sapply(self$failures, "[[", "test")
      header <- paste(label, ". ", type, ": ", tests, " ", sep = "")
      line <- charrep("-", getOption("width") - nchar(header))

      message <- sapply(self$failures, "[[", "message")

      cat("\n\n")
      cat(paste(
        colourise(header, "red"), line, "\n", 
        message, "\n", sep = "", collapse = "\n"))      
    }
  }
  
})


.praise <- c(
  "You rock!",
  "You are a coding rockstar!",
  "Keep up the good work.",
  ":)",
  "Woot!",
  "Way to go!",
  "Nice code.",
  ""
)