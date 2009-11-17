\name{StopReporter}
\alias{StopReporter}
\title{Test reporter: stop on error.}

\description{
  Test reporter: stop on error.
}

\details{
  The default reporter, executed when \code{expect_that} is run
  interactively, or when the test files are executed by R CMD check. It
  responds by \link{stop}()ing on failures and doing nothing otherwise.
  This will ensure that a failing test will raise an error.

  This should be used when doing a quick and dirty test, or during the
  final automated testing of R CMD check.  Otherwise, use a reporter
  that runs all tests and gives you more context about the problem.
}
\keyword{debugging}
