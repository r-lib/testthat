\name{matches}
\title{Expectation: does string match regular expression?}
\usage{matches(regexp, ...)}

\description{
  Expectation: does string match regular expression?
}

\details{
  If the object to be tested has length greater than one, all elements
  of the vector must match the pattern in order to pass.
}
\alias{matches}
\alias{expect_match}
\arguments{
  \item{regexp}{regular expression to test against}
  \item{...}{other arguments passed to \code{\link{grepl}}}
}
\examples{expect_that("Testing is fun", matches("fun"))
expect_that("Testing is fun", matches("f.n"))
expect_match("Testing is fun", "f.n")}
