\name{throws_error}
\alias{expect_error}
\alias{throws_error}
\title{Expectation: does expression throw an error?}
\usage{
  throws_error(regexp = NULL)
}
\arguments{
  \item{regexp}{optional regular expression to match. If
  not specified, just asserts that expression throws some
  error.}
}
\description{
  Expectation: does expression throw an error?
}
\examples{
expect_that(log("a"), throws_error())
expect_error(log("a"))
expect_that(log("a"), throws_error("Non-numeric argument"))
expect_error(log("a"), "Non-numeric argument")
}

