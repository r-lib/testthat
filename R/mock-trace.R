local_traces <- function(..., .package = NULL, .env = caller_env()) {

  exprs <- enexprs(...)
  if (!is_named(exprs)) {
    cli::cli_abort("All elements of {.arg ...} must be named.")
  }

  if (is.null(.package)) {
    where <- caller_env()
  } else {
    where <- ns_env(.package)
  }

  funs <- names(exprs)
  for (fun in funs) {
    trace(fun, exprs[[fun]], where = where, print = FALSE)
  }
  withr::defer(untrace(funs, where = where), envir = .env)

  invisible()
}

