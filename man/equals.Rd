\name{equals}
\title{Expectation: is the object equal (with numerical tolerance) to a value?}
\usage{equals(expected, label, ...)}

\description{
  Expectation: is the object equal (with numerical tolerance) to a
  value?
}

\details{
  Comparison performed using \code{\link{all.equal}}.
}
\alias{equals}
\alias{expect_equal}
\arguments{
  \item{expected}{expected value}
  \item{label}{label of expected object used in error messages.  Useful to 
override default (deparsed expected expression) when doing tests in a
loop.}
  \item{...}{other values passed to \code{\link{all.equal}}}
}
\examples{a <- 10
expect_that(a, equals(10))
expect_equal(a, 10)

# Use equals() when testing for numeric equality
sqrt(2) ^ 2 - 1
expect_that(sqrt(2) ^ 2, equals(2))
expect_equal(sqrt(2) ^ 2, 2)
# Neither of these forms taken floating point representation errors into
# account
\dontrun{
expect_that(sqrt(2) ^ 2 == 2, is_true())
expect_that(sqrt(2) ^ 2, is_identical_to(2))
}}
