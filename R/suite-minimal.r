MinimalSuite$do({
  self$add_result <- function(result) { 
    if (result$passed) {
      catcol(".", fg = "light green")
    } else {
      if (result$error) {
        catcol("F", fg = "red")      
      } else {
        catcol("E", fg = "red")
      }
    }
  }
  
  self$end_suite <- function() {
    cat("\n")
  }
})