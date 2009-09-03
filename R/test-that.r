test_that <- function(desc, code) {
  test_suite()$start_test(desc)
  
  env <- new.env(parent = globalenv())
  
  res <- tryCatch(
    withCallingHandlers(eval(substitute(code), env),
      error = function(e) {
        e$calls <- sys.calls()
        signalCondition(e)
      }),
      error = function(e) e)
  
  if (inherits(res, "error")) {
    calls <- lapply(res$calls, deparse)
    calls <- sapply(calls, paste, collapse = "\n")
    first_eval <- match("eval(expr, envir, enclos)", calls)[1]
    last_stop <- match("stop", substr(calls, 1, 4))[1]
    
    user_calls <- calls[seq(first_eval + 1, last_stop)]
    user_calls <- paste(seq_along(user_calls), ": ", user_calls, sep = "")
    user_calls <- gsub("\n", "\n   ", user_calls)
    user_calls <- paste(user_calls, collapse = "\n")
    
    line <- paste(rep("-", getOption("width")), collapse = "")
    msg <- paste("\n", line, "\n",  as.character(res), user_calls, "\n", line, sep = "")
    
    test_suite()$add_result(expectation(NA, msg))
  }
  
  test_suite()$end_test()
}

