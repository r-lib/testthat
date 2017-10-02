teardown_env <- new.env(parent = emptyenv())
teardown_env$queue <- list()

#' Run code on teardown
#'
#' Code in a teardown block is guaranteed to be run upon completion of a test
#' file. Multiple calls to `teardown` will be executed in the order they
#' were created.
#'
#' @param code Code to evaluate
#' @param env Environment in which code will be evaluted. For expert
#'   use only.
#' @export
#' @examples
#' \dontrun{
#' teardown{
#'   tmp <- tempfile()
#'   writeLines(tmp, "some test data")
#'   teardown(unlink(tmp))
#' }
#' }
teardown <- function(code, env = parent.frame()) {
  fun <- eval(call("function", pairlist(), substitute(code)), env)
  teardown_env$queue <- append(teardown_env$queue, fun)

  invisible()
}

teardown_reset <- function() {
  teardown_env$queue <- list()
}

teardown_run <- function(path = ".") {
  old_dir <- setwd(path)
  on.exit(setwd(old_dir), add = TRUE)

  lapply(teardown_env$queue, function(f) try(f()))
  teardown_reset()
}
