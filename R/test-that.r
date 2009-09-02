test_that <- function(desc, code) {
  test_suite$start_test(desc)
  
  env <- new.env(parent = globalenv())
  eval(substitute(code), env)
  test_suite$end_test()
}

