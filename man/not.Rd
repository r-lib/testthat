\name{not}
\alias{not}
\title{Negate an expectation}
\usage{
  not(f)
}
\arguments{
  \item{expt}{an existing expectation}
}
\description{
  This negates an expectation, making it possible to
  express that you want the opposite of a standard
  expectation.
}
\examples{
x <- 1
expect_that(x, equals(1))
expect_that(x, not(equals(2)))
\dontrun{
expect_that(x, equals(2))
expect_that(x, not(equals(1)))
}
}

