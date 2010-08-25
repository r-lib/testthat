\name{is_identical_to}
\title{Expectation: is the object identical to another?}
\usage{is_identical_to(expected, label)}

\description{
  Expectation: is the object identical to another?
}

\details{
  Comparison performed using \code{\link{identical}}.
}
\alias{is_identical_to}
\alias{expect_identical}
\arguments{
  \item{expected}{expected value}
  \item{label}{label of expected object used in error messages.  Useful to 
override default (deparsed expected expression) when doing tests in a
loop.}
}
\examples{a <- letters[1:3]
expect_that(a, is_identical_to(c("a", "b", "c")))
expect_identical(a, c("a", "b", "c"))

# Identical does not take into account numeric tolerance
\dontrun{
expect_that(sqrt(2) ^ 2, is_identical_to(2))
expect_identical(sqrt(2) ^ 2, 2)
}}
