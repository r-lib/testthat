teardown_env <- new.env(parent = emptyenv())
teardown_env$queue <- list()

#' Run code on setup/teardown
#'
#' Code in a `setup()` block is run immediately in a clean environment.
#' Code in a `teardown()` block is run upon completion of a test file,
#' even if it exits with an error. Multiple calls to `teardown()` will be
#' executed in the order they were created.
#'
#' @param code Code to evaluate
#' @param env Environment in which code will be evaluted. For expert
#'   use only.
#' @export
#' @examples
#' \dontrun{
#'
#' tmp <- tempfile()
#' setup(writeLines("some test data", tmp))
#' teardown(unlink(tmp))
#'
#' }
teardown <- function(code, env = parent.frame()) {
  fun <- new_function(list(), enexpr(code), env = env)
  teardown_env$queue <- append(teardown_env$queue, fun)

  invisible()
}

#' @export
#' @rdname teardown
setup <- function(code, env = parent.frame()) {
  out <- eval_tidy(enquo(code), env = env)
  invisible(out)
}

teardown_reset <- function() {
  teardown_env$queue <- list()
}

teardown_run <- function(path = ".") {
  if (length(teardown_env$queue) == 0)
    return()

  old_dir <- setwd(path)
  on.exit(setwd(old_dir), add = TRUE)

  lapply(teardown_env$queue, function(f) try(f()))
  teardown_reset()
  gc()
}
