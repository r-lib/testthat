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
        self$failures[[self$n]] <- result
        catcol(labels[self$n], fg = "red")        
      }
      
    }
  }
  
  self$end_suite <- function() {
    label <- labels[seq_len(self$n)]
    message <- sapply(self$failures, "[[", "message")
    line <- paste(rep("-", getOption("width") - 2), collapse = "")
    
    cat("\n", paste(
      colourise(label, "red"), " ", line, "\n", 
      message, "\n", sep = "", collapse = "\n"), sep = "")
    
  }
  
})

