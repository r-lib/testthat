#' Skip a test
#'
#' @description
#' `skip_if()` and `skip_if_not()` allow you to skip tests, immediately
#' concluding a [test_that()] block without executing any further expectations.
#' This allows you to skip a test without failure, if for some reason it
#' can't be run (e.g. it depends on the feature of a specific operating system,
#' or it requires a specific version of a package).
#'
#' See `vignette("skipping")` for more details.
#'
#' @section Helpers:
#'
#' * `skip_if_not_installed("pkg")` skips tests if package "pkg" is not
#'   installed or cannot be loaded (using `requireNamespace()`). Generally,
#'   you can assume that suggested packages are installed, and you do not
#'   need to check for them specifically, unless they are particularly
#'   difficult to install.
#'
#' * `skip_if_offline()` skips if an internet connection is not available
#'   (using [curl::nslookup()]).
#'
#' * `skip_if_translated("msg")` skips tests if the "msg" is translated.
#'
#' * `skip_on_bioc()` skips on Bioconductor (using the `BBS_HOME` env var).
#'
#' * `skip_on_cran()` skips on CRAN (using the `NOT_CRAN` env var set by
#'    devtools and friends).
#'
#' * `skip_on_covr()` skips when covr is running (using the `R_COVR` env var).
#'
#' * `skip_on_ci()` skips on continuous integration systems like GitHub Actions,
#'    travis, and appveyor (using the `CI` env var). It supersedes the older
#'    `skip_on_travis()` and `skip_on_appveyor()` functions.
#'
#' * `skip_on_os()` skips on the specified operating system(s) ("windows",
#'   "mac", "linux", or "solaris").
#'
#' @param message A message describing why the test was skipped.
#' @param host A string with a hostname to lookup
#' @export
#' @examples
#' if (FALSE) skip("No internet connection")
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
skip_if_not <- function(condition, message = NULL) {
  if (is.null(message)) {
    message <- paste0(deparse(substitute(condition)), " is not TRUE")
  }
  if (!isTRUE(condition)) {
    skip(message)
  }
}

#' @export
#' @rdname skip
skip_if <- function(condition, message = NULL) {
  if (is.null(message)) {
    message <- paste0(deparse(substitute(condition)), " is TRUE")
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
    windows = if ("windows" %in% os) skip("On Windows"),
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
