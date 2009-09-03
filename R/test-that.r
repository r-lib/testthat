test_that <- function(desc, code) {
  test_suite()$start_test(desc)
  
  env <- new.env(parent = globalenv())  
  res <- try_capture_stack(substitute(code), env)
  
  if (inherits(res, "error")) {
    traceback <- create_traceback(res$calls)
    report <- error_report(res, traceback)
    test_suite()$add_result(report)
  }
  
  test_suite()$end_test()
}

error_report <- function(error, traceback) {
  msg <- gsub("Error.*?: ", "", as.character(error))
  
  if (length(traceback) > 0) {
    user_calls <- paste(traceback, collapse = "\n")      
    msg <- paste(msg, user_calls, sep = "")
  } else {
    # Need to remove trailing newline from error message to be consistent
    # with other messages
    msg <- gsub("\n$", "", msg)
  }
  
  expectation(NA, msg)
}

create_traceback <- function(callstack) {
  calls <- lapply(callstack, deparse)
  calls <- sapply(calls, paste, collapse = "\n")
  first_eval <- match("eval(expr, envir, enclos)", calls, 0)[1]
  
  if (first_eval == length(calls)) return()
  
  user_calls <- calls[-seq_len(first_eval)]
  user_calls <- paste(seq_along(user_calls), ": ", user_calls, sep = "")
  user_calls <- gsub("\n", "\n   ", user_calls)
  user_calls
  
}

try_capture_stack <- function(quoted_code, env) {
  capture_calls <- function(e) {
    # Capture call stack, removing last two calls, which are added by
    # withCallingHandlers
    e$calls <- head(sys.calls(), -2)
    signalCondition(e)
  }
  
  tryCatch(
    withCallingHandlers(eval(quoted_code, env), error = capture_calls),
    error = identity
  )
}