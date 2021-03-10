#' Skip a test.
#'
#' This function allows you to skip a test if it's not currently available.
#' This will produce an informative message, but will not cause the test
#' suite to fail.
#'
#' `skip*` functions are intended for use within [test_that()]
#' blocks.  All expectations following the \code{skip*} statement within the
#' same `test_that` block will be skipped.  Test summaries that report skip
#' counts are reporting how many `test_that` blocks triggered a `skip*`
#' statement, not how many expectations were skipped.
#'
#' @section Helpers:
#' `skip_if_not()` works like [stopifnot()], generating
#' a message automatically based on the first argument.
#'
#' `skip_if_offline()` skips tests if an internet connection is not available
#' using [curl::nslookup()].
#'
#' `skip_on_cran()` skips tests on CRAN, using the `NOT_CRAN`
#' environment variable set by devtools.
#'
#' `skip_on_travis()` skips tests on Travis CI by inspecting the
#' `TRAVIS` environment variable.
#'
#' `skip_on_appveyor()` skips tests on AppVeyor by inspecting the
#' `APPVEYOR` environment variable.
#'
#' `skip_on_ci()` skips tests on continuous integration systems by inspecting
#' the `CI` environment variable.
#'
#' `skip_on_covr()` skips tests when covr is running by inspecting the
#' `R_COVR` environment variable
#'
#' `skip_on_bioc()` skips tests on Bioconductor by inspecting the
#' `BBS_HOME` environment variable.
#'
#' `skip_if_not_installed()` skips a tests if a package is not installed
#' or cannot be loaded (useful for suggested packages).  It loads the package as
#' a side effect, because the package is likely to be used anyway.
#'
#' @param message A message describing why the test was skipped.
#' @param host A string with a hostname to lookup
#' @export
#' @examples
#' if (FALSE) skip("No internet connection")
#'
#' ## The following are only meaningful when put in test files and
#' ## run with `test_file`, `test_dir`, `test_check`, etc.
#'
#' test_that("skip example", {
#'   expect_equal(1, 1L)    # this expectation runs
#'   skip('skip')
#'   expect_equal(1, 2)     # this one skipped
#'   expect_equal(1, 3)     # this one is also skipped
#' })
skip <- function(message) {
  message <- paste0(message, collapse = "\n")
  cond <- structure(
    list(message = paste0("Reason: ", message)),
    class = c("skip", "condition")
  )
  stop(cond)
}

# Called automatically if the test contains no expectations
skip_empty <- function() {
  cond <- structure(
    list(message = "Reason: empty test"),
    class = c("skip_empty", "skip", "condition")
  )
  stop(cond)
}

#' @export
#' @rdname skip
#' @param condition Boolean condition to check. `skip_if_not()` will skip if
#'   `FALSE`, `skip_if()` will skip if `TRUE`.
skip_if_not <- function(condition, message = deparse(substitute(condition))) {
  message <- paste0(message, " is not TRUE")
  if (!isTRUE(condition)) {
    skip(message)
  }
}

#' @export
#' @rdname skip
skip_if <- function(condition, message = NULL) {
  if (is.null(message)) {
    message <- paste(deparse(substitute(condition)), " is TRUE")
  }
  if (isTRUE(condition)) {
    skip(message)
  }
}

#' @export
#' @param pkg Name of package to check for
#' @param minimum_version Minimum required version for the package
#' @rdname skip
skip_if_not_installed <- function(pkg, minimum_version = NULL) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    skip(paste0(pkg, " cannot be loaded"))
  }

  if (!is.null(minimum_version)) {
    installed_version <- utils::packageVersion(pkg)
    if (installed_version < minimum_version) {
      skip(paste0(
        "Installed ", pkg, " is version ", installed_version, "; ",
        "but ", minimum_version, " is required"
      ))
    }
  }

  return(invisible(TRUE))
}

#' @export
#' @rdname skip
skip_if_offline <- function(host = "r-project.org") {
  skip_if_not_installed("curl")
  has_internet <- !is.null(curl::nslookup(host, error = FALSE))
  if (!has_internet) {
    skip("offline")
  }
}

#' @export
#' @rdname skip
skip_on_cran <- function() {
  skip_if(on_cran(), "On CRAN")
}

on_cran <- function() !identical(Sys.getenv("NOT_CRAN"), "true")

#' @export
#' @param os Character vector of system names. Supported values are
#'   `"windows"`, `"mac"`, `"linux"` and `"solaris"`.
#' @rdname skip
skip_on_os <- function(os) {
  os <- match.arg(
    os, c("windows", "mac", "linux", "solaris"),
    several.ok = TRUE
  )
  sysname <- tolower(Sys.info()[["sysname"]])

  switch(sysname,
    windows = if ("windows" %in% os) skip("On windows"),
    darwin =  if ("mac" %in% os) skip("On Mac"),
    linux =   if ("linux" %in% os) skip("On Linux"),
    sunos =   if ("solaris" %in% os) skip("On Solaris")
  )

  invisible(TRUE)
}

#' @export
#' @rdname skip
skip_on_travis <- function() {
  if (!identical(Sys.getenv("TRAVIS"), "true")) {
    return(invisible(TRUE))
  }

  skip("On Travis")
}

#' @export
#' @rdname skip
skip_on_appveyor <- function() {
  if (!identical(Sys.getenv("APPVEYOR"), "True")) {
    return()
  }

  skip("On Appveyor")
}

#' @export
#' @rdname skip
skip_on_ci <- function() {
  if (!on_ci()) {
    return(invisible(TRUE))
  }

  skip("On CI")
}

on_ci <- function() {
 isTRUE(as.logical(Sys.getenv("CI")))
}

in_covr <- function() {
  identical(Sys.getenv("R_COVR"), "true")
}

#' @export
#' @rdname skip
skip_on_covr <- function() {
  if (! in_covr()) {
    return(invisible(TRUE))
  }

  skip("On covr")
}

#' @export
#' @rdname skip
skip_on_bioc <- function() {
  if (identical(Sys.getenv("BBS_HOME"), "")) {
    return(invisible(TRUE))
  }

  skip("On Bioconductor")
}

#' @export
#' @param msgid R message identifier used to check for translation: the default
#'   uses a message included in most translation packs. See the complete list in
#'   [`R-base.pot`](https://github.com/wch/r-source/blob/master/src/library/base/po/R-base.pot).
#' @rdname skip
skip_if_translated <- function(msgid = "'%s' not found") {
  if (gettext(msgid, domain = "R") == msgid) {
    return(invisible(TRUE))
  }

  skip(paste0("\"", msgid, "\" is translated"))
}
