test_that <- function(desc, code) {
  test_suite$start_test(desc)
  
  env <- new.env(parent = globalenv())
  
  res <- try(eval(substitute(code), env), silent = TRUE)
  if (inherits(res, "try-error")) {
    # trace <- paste(capture.output(traceback()), collapse = "\n")
    # msg <- paste(as.character(res), trace, sep = "\n")

    line <- paste(rep("-", getOption("width")), collapse = "")
    msg <- paste("\n", line, "\n",  as.character(res), line, sep = "")
    
    test_suite$add_result(expectation(NA, msg))
  }
  
  test_suite$end_test()
}

