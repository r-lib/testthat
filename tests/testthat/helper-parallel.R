
test_pkg_in_subprocess <- function(path, sort = TRUE) {
  do <- function() {
    Sys.unsetenv("TESTTHAT_PARALLEL")
    testthat::test_local(".", reporter = "silent", stop_on_failure = FALSE)
  }

  results <- callr::r(do, wd = path)
  if (sort) {
    results[] <- results[order(vapply(results, "[[", "", "file"))]
  }
  results
}
