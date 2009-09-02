expect_that <- function(object, test) {
  name <- deparse(substitute(object))
  results <- test(object)
  
  test_suite$add_result(results)
}

