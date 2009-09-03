expect_that <- function(object, test) {
  name <- deparse(substitute(object))
  results <- test(object)
  
  results$message <- paste(name, results$message)
  
  test_suite()$add_result(results)
  invisible()
}

