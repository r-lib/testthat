\name{is_false}
\alias{is_false}
\title{Expectation: is the object false?}

\description{
  Expectation: is the object false?
}

\details{
  A useful fall-back expectation like \code{\link{is_true}}
}
\examples{expect_that(3 == 2, is_false())

a <- 1:3
expect_that(length(a) == 4, is_false())}
