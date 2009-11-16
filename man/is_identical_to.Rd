\name{is_identical_to}
\alias{is_identical_to}
\title{Expectation: is the object identical to another?}
\usage{is_identical_to(expected)}

\description{
  Expectation: is the object identical to another?
}

\details{
  Comparison performed using \code{\link{identical}}.
}
\arguments{
  \item{expected}{expected value}
}
\examples{a <- letters[1:3]
expect_that(a, is_identical_to(c("a", "b", "c")))

# Identical does not take into account numeric tolerance
\dontrun{
expect_that(sqrt(2) ^ 2, is_identical_to(2))
}}
