\name{test_package}
\alias{test_check}
\alias{test_package}
\title{Run all tests in an installed package}
\usage{
test_package(package, filter = NULL, parallel = FALSE,
  reporter = "summary", ...)

test_check(package, filter = NULL, parallel = FALSE, reporter = "summary",
  ...)
}
\arguments{
  \item{package}{package name}

  \item{parallel}{whether to run the tests in parallel
  using \code{\link{parallel_test_dir}}}

  \item{...}{additional arguments forwarded to
  \code{\link{parallel_test_dir}}}

  \item{filter}{If not \code{NULL}, only tests with file
  names matching this regular expression will be executed.
  Matching will take on the file name after it has been
  stripped of \code{"test-"} and \code{".r"}.}

  \item{reporter}{reporter to use}
}
\value{
the results as a "testthat_results" (list)
}
\description{
Test are run in an environment that inherits from the
package's namespace environment, so that tests can access
non-exported functions and variables. Tests should be
placed in either \code{inst/tests}, or (better)
\code{tests/testthat}.
}
\section{R CMD check}{
  Use \code{test_package} to test an installed package, or
  in \code{tests/test-all.R}if you're using the older
  \code{inst/tests} convention.

  If your tests live in \code{tests/testthat} (preferred)
  use \code{test_check} in \code{tests/test-all.R}.  You
  still use \code{test_package} when testing the installed
  package.
}
\examples{
\dontrun{test_package("testthat")}
}

