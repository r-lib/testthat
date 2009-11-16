\name{throws_error}
\alias{throws_error}
\title{Expectation: does expression throw an error?}
\usage{throws_error(regexp)}

\description{
  Expectation: does expression throw an error?
}
\arguments{
  \item{regexp}{optional regular expression to match. If not specified, just
asserts that expression throws some error.}
}
\examples{expect_that(log("a"), throws_error())
expect_that(log("a"), throws_error("Non-numeric argument"))}
