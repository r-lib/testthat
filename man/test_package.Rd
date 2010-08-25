\name{test_package}
\alias{test_package}
\title{Run all tests in an installed package...}
\usage{test_package(package)}

\description{
  Run all tests in an installed package
}

\details{
  Test are run in an environment that inherits from the package
  environment so that tests can access non-exported functions and
  variables.
}
\arguments{
  \item{package}{package name}
}
\examples{test_package("testthat")}
