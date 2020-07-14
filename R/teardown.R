teardown_env <- new.env(parent = emptyenv())
teardown_env$queue <- list()

#' Run code before/after tests
#'
#' @description
#' `r lifecycle::badge("superseded")`
#'
#' We no longer recommend using `setup()` and `teardown()`; instead
#' we think it's better practice to use a **test fixture** as described in
#' `vignette("test-fixtures")`.
#'
#' Code in a `setup()` block is run immediately in a clean environment.
#' Code in a `teardown()` block is run upon completion of a test file,
#' even if it exits with an error. Multiple calls to `teardown()` will be
#' executed in the order they were created.
#'
#' @param code Code to evaluate
#' @param env Environment in which code will be evaluated. For expert
#'   use only.
#' @export
#' @keywords internal
#' @examples
#' \dontrun{
#' # Old approach
#' tmp <- tempfile()
#' setup(writeLines("some test data", tmp))
#' teardown(unlink(tmp))
#' }
#'
#' # Now recommended:
#' local_test_data <- function(env = parent.frame()) {
#'   tmp <- tempfile()
#'   writeLines("some test data", tmp)
#'   withr::defer(unlink(tmp), env)
#'
#'   tmp
#' }
#' # Then call local_test_data() in your tests
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
