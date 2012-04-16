\docType{data}
\name{StopReporter}
\alias{StopReporter}
\alias{StopReporter-class}
\title{Test reporter: stop on error.}
\format{Reference class 'refObjectGenerator' [package "methods"] with 2 fields
 and 17 methods, of which 6 are possibly relevant:
   accessors, fields, help, lock, methods, new}
\usage{
  StopReporter
}
\description{
  The default reporter, executed when \code{expect_that} is
  run interactively, or when the test files are executed by
  R CMD check. It responds by \link{stop}()ing on failures
  and doing nothing otherwise. This will ensure that a
  failing test will raise an error.
}
\details{
  This should be used when doing a quick and dirty test, or
  during the final automated testing of R CMD check.
  Otherwise, use a reporter that runs all tests and gives
  you more context about the problem.
}
\keyword{dataset}
\keyword{debugging}

