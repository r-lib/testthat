\name{test_package}
\alias{test_package}
\title{Run all tests in an installed package}
\usage{
  test_package(package, filter = NULL,
    reporter = "summary")
}
\arguments{
  \item{package}{package name}

  \item{filter}{If not \code{NULL}, only tests with file
  names matching this regular expression will be executed.
  Matching will take on the file name after it has been
  stripped of \code{"test-"} and \code{".r"}.}

  \item{reporter}{reporter to use}
}
\description{
  Test are run in an environment that inherits from the
  package environment so that tests can access non-exported
  functions and variables.
}
\examples{
\dontrun{test_package("testthat")}
}

