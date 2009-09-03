expect_that <- function(object, test) {
  name <- deparse(substitute(object))
  results <- test(object)
  
  results$message <- paste("Failure:", name, results$message)
  
  test_suite()$add_result(results)
}

