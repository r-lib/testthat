\name{is_false}
\title{Expectation: is the object false?}

\description{
  Expectation: is the object false?
}

\details{
  A useful fall-back expectation like \code{\link{is_true}}
}
\alias{is_false}
\alias{expect_false}
\examples{expect_that(3 == 2, is_false())
expect_false(3 == 2)

a <- 1:3
expect_that(length(a) == 4, is_false())}
