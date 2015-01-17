#' @title
#' Evaluate test code in appropriate working directory.
#'
#' @description
#' Wrapping test code with this function ensures that the appropriate working
#' directory is chosen regardless of how test code is executed (see details).
#' This is especially useful when test code is still at a "development stage",
#' i.e. not completely fit for execution via \code{\link[testthat]{test}} yet.
#'
#' @details
#' In case test code is executed via "stand-alone" calls to either
#' \code{\link[testthat]{expect_that}} (or functions calling that function) or
#' \code{\link[testthat]{test_that}} instead of a "global" call to
#' \code{\link[testthat]{test}}, the working directory is \emph{temporarily}
#' set to \code{"~/tests/testthat"}.
#'
#' @section Assumptions:
#' The function assumes that your initial working directory points to a
#' directory containing a valid R package (project) as created via
#' functions like \code{\link[base]{package.skeleton}},
#' \code{\link[devtools]{create}} or the like.
#'
#' @param code test code containing expectations
#' @examples
#' old <- setwd(tempdir())
#' dir.create("tests/testthat/test_dir", recursive = TRUE)
#' # Assumes that the following file exists: ~/tests/testthat/test_dir
#' # Failing test when executed in a "stand-alone" manner:
#' \dontrun{
#' expect_true(file.exists("test_dir"))
#' }
#' # Ensuring the appropriate working directory:
#  withConditionalWorkingDirectory(
#    expect_true(file.exists("test_dir"))
#  )
#' # Clean up:
#' if (grepl(basename(getwd()), old)) {
#'   unlink("tests", recursive = TRUE)
#' }
#' setwd(old)
#' @export
withConditionalWorkingDirectory <- function(code) {
  wd <- getwd()
  if (!length(grep("/tests/testthat$", wd))) {
    setwd("tests/testthat")
  } else {
    getwd()
  }
  on.exit(setwd(wd))
  force(code)
}

## Suggestion //
## Maybe it might be a good idea to wrap calls to either `test_that` or to
## `expect_that` with `withConditionalWorkingDirectory` so a developer/user
## does not need to do it manually for his unit tests.
test_that_suggested <- function(desc, code) {
  withConditionalWorkingDirectory(
    test_code(desc, substitute(code), env = parent.frame())
  )
  invisible()
}
