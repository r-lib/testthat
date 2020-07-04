.onLoad <- function(libname, pkgname) {
  # Default reporter needs to stop if any tests fail
  testthat_env$reporter <- StopReporter$new()
}
