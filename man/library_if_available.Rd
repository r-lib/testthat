\name{library_if_available}
\alias{library_if_available}
\title{Load package, if available.}
\usage{library_if_available(package)}

\description{
  Load package, if available.
}

\details{
  Quietly load a package if it is installed, otherwise do
  nothing.  This is useful for testing files so that you
  can run them while you are developing your package,
  before it is installed for the first time; then continue
  to have the same code work when the tests are run
  automatically by R CMD CHECK.
}
\arguments{
  \item{package}{package name (without quotes)}
}
\examples{library_if_available(testthat)
library_if_available(packagethatdoesntexist)}
