SummarySuite$do({
  labels <- c(1:9, letters, LETTERS)
  
  self$start_context <- function(desc) {
    cat(desc, ": ", sep = "")
  }
  
  self$end_context <- function() {
    cat("\n")
  }
  
  self$start_suite <- function() {
    self$failures <- list()
    self$n <- 0
  }
  
  self$add_result <- function(result) {
    if (result$passed) {
      catcol(".", fg = "light green")
    } else {
      self$n <- self$n + 1
      
      if (self$n > length(labels)) {
        self$n <- length(labels)
        catcol("F", fg = "red")
      } else {
        result$test <- self$test
        self$failures[[self$n]] <- result
        catcol(labels[self$n], fg = "red")        
      }
      
    }
  }
  
  self$end_suite <- function() {
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
  
})

charrep <- function(char, times) {
  sapply(times, function(i) paste(rep.int(char, i), collapse = ""))
}