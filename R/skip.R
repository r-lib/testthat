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
#'   (using [curl::nslookup()]) or if the test is run on CRAN.
#'
#' * `skip_if_translated("msg")` skips tests if the "msg" is translated.
#'
#' * `skip_on_bioc()` skips on Bioconductor (using the `IS_BIOC_BUILD_MACHINE`
#'    env var).
#'
#' * `skip_on_cran()` skips on CRAN (using the `NOT_CRAN` env var set by
#'    devtools and friends).
#'
#' * `skip_on_covr()` skips when covr is running (using the `R_COVR` env var).
#'
#' * `skip_on_ci()` skips on continuous integration systems like GitHub Actions,
#'    travis, and appveyor (using the `CI` env var).
#'
#' * `skip_on_os()` skips on the specified operating system(s) ("windows",
#'   "mac", "linux", or "solaris").
#'
#' @param message A message describing why the test was skipped.
#' @param host A string with a hostname to lookup
#' @export
#' @examples
#' if (FALSE) skip("Some Important Requirement is not available")
#'
#' test_that("skip example", {
#'   expect_equal(1, 1L)    # this expectation runs
#'   skip('skip')
#'   expect_equal(1, 2)     # this one skipped
#'   expect_equal(1, 3)     # this one is also skipped
#' })
skip <- function(message = "Skipping") {
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
    message <- paste0(deparse1(substitute(condition)), " is not TRUE")
  }
  if (!isTRUE(condition)) {
    skip(message)
  } else {
    invisible()
  }
}

#' @export
#' @rdname skip
skip_if <- function(condition, message = NULL) {
  if (is.null(message)) {
    message <- paste0(deparse1(substitute(condition)), " is TRUE")
  }
  if (isTRUE(condition)) {
    skip(message)
  } else {
    invisible()
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

  invisible()
}

#' @export
#' @rdname skip
skip_if_offline <- function(host = "r-project.org") {
  skip_on_cran()
  skip_if_not_installed("curl")
  skip_if_not(has_internet(host), "offline")
}
has_internet <- function(host) {
  !is.null(curl::nslookup(host, error = FALSE))
}

#' @export
#' @rdname skip
skip_on_cran <- function() {
  skip_if(on_cran(), "On CRAN")
}

#' @export
#' @param os Character vector of one or more operating systems to skip on.
#'   Supported values are `"windows"`, `"mac"`, `"linux"`, and `"solaris"`.
#' @param arch Character vector of one or more architectures to skip on.
#'   Common values include `"i386"` (32 bit), `"x86_64"` (64 bit), and
#'   `"aarch64"` (M1 mac). Supplying `arch` makes the test stricter; i.e. both
#'   `os` and `arch` must match in order for the test to be skipped.
#' @rdname skip
skip_on_os <- function(os, arch = NULL) {
  os <- match.arg(
    os,
    choices = c("windows", "mac", "linux", "solaris"),
    several.ok = TRUE
  )

  msg <- switch(system_os(),
    windows = if ("windows" %in% os) "On Windows",
    darwin =  if ("mac" %in% os) "On Mac",
    linux =   if ("linux" %in% os) "On Linux",
    sunos =   if ("solaris" %in% os) "On Solaris"
  )

  if (!is.null(arch) && !is.null(msg)) {
    if (!is.character(arch)) {
      abort("`arch` must be a character vector")
    }

    if (system_arch() %in% arch) {
      msg <- paste(msg, system_arch())
    } else {
      msg <- NULL
    }
  }

  if (is.null(msg)) {
    invisible(TRUE)
  } else {
    skip(msg)
  }
}

system_os <- function() tolower(Sys.info()[["sysname"]])
system_arch <- function() R.version$arch

#' @export
#' @rdname skip
skip_on_ci <- function() {
  skip_if(on_ci(), "On CI")
}

#' @export
#' @rdname skip
skip_on_covr <- function() {
  skip_if(in_covr(), "On covr")
}

#' @export
#' @rdname skip
skip_on_bioc <- function() {
  skip_if(on_bioc(), "On Bioconductor")
}

#' @export
#' @param msgid R message identifier used to check for translation: the default
#'   uses a message included in most translation packs. See the complete list in
#'   [`R-base.pot`](https://github.com/wch/r-source/blob/master/src/library/base/po/R-base.pot).
#' @rdname skip
skip_if_translated <- function(msgid = "'%s' not found") {
  skip_if(
    gettext(msgid) != msgid,
    paste0("\"", msgid, "\" is translated")
  )
}

gettext <- function(msgid, domain = "R") {
  base::gettext(msgid, domain = domain)
}


#' Superseded skip functions
#'
#' @description
#' `r lifecycle::badge("superseded")`
#'
#' * `skip_on_travis()` and `skip_on_appveyor()` have been superseded by
#'   [skip_on_ci()].
#'
#' @export
#' @keywords internal
skip_on_travis <- function() {
  skip_if(env_var_is_true("TRAVIS"), "On Travis")
}

#' @export
#' @rdname skip_on_travis
skip_on_appveyor <- function() {
  skip_if(env_var_is_true("APPVEYOR"), "On Appveyor")
}

# helpers -----------------------------------------------------------------

on_ci <- function() {
 env_var_is_true("CI")
}
in_covr <- function() {
  env_var_is_true("R_COVR")
}
on_bioc <- function() {
  env_var_is_true("IS_BIOC_BUILD_MACHINE")
}
on_cran <- function() {
  !env_var_is_true("NOT_CRAN")
}

env_var_is_true <- function(x) {
  isTRUE(as.logical(Sys.getenv(x, "false")))
}
