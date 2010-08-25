\name{matches}
\title{Expectation: does string match regular expression?}
\usage{matches(regexp, all=TRUE)}

\description{
  Expectation: does string match regular expression?
}

\details{
  If the object to be tested has length greater than one, all elements
  of the vector must match the pattern in order to pass.
}
\seealso{\code{\link[string]{str_detect}} for the function that powers
the string matching}
\alias{matches}
\alias{expect_match}
\arguments{
  \item{regexp}{regular expression to test against}
  \item{all}{should all elements of actual value match \code{regexp} (TRUE),
or does only one need to match (FALSE)}
}
\examples{expect_that("Testing is fun", matches("fun"))
expect_that("Testing is fun", matches("f.n"))
expect_match("Testing is fun", "f.n")}
