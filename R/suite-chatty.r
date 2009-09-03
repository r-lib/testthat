ChattySuite$do({
  
  self$start_context <- function(desc) {
    cat(desc, "\n")
  }
  
  self$start_test <- function(desc) {
    cat("  ", desc, ": ", sep = "")
  }
  
  self$add_result <- function(result) {
    if (result$passed) {
      catcol(".", bg = "green")
    } else {
      if (result$error) {
        catcol("E", bg = "red")
      } else {
        catcol("F", bg = "red")
      }
      line <- paste(rep("-", getOption("width")), collapse = "")
      
      cat("\n", line, "\n", result$message, "\n", line, "\n  ", sep = "")
    }
  }
  self$end_test <- function() {
    cat("\n")
  }
  
})