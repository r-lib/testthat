test_file <- function(path, suite = SummarySuite) {    
  with_suite(suite$clone(), source(path))
}