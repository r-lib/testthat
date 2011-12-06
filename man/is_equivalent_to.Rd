\name{is_equivalent_to}
\alias{expect_equivalent}
\alias{is_equivalent_to}
\title{Expectation: is the object equivalent to a value?
This expectation tests for equivalency: are two objects equal once their
attributes have been removed.}
\usage{
  is_equivalent_to(expected, label = NULL)
}
\arguments{
  \item{expected}{expected value}

  \item{label}{label of expected object used in error
  messages.  Useful to override default (deparsed expected
  expression) when doing tests in a loop.}
}
\description{
  Expectation: is the object equivalent to a value? This
  expectation tests for equivalency: are two objects equal
  once their attributes have been removed.
}
\examples{
a <- b <- 1:3
names(b) <- letters[1:3]
expect_that(a, is_equivalent_to(b, label = b))
expect_equivalent(a, b)
}

