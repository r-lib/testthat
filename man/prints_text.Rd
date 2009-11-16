\name{prints_text}
\alias{prints_text}
\title{Expectation: does printed output match a regular expression?}
\usage{prints_text(regexp, ...)}

\description{
  Expectation: does printed output match a regular expression?
}
\arguments{
  \item{regexp}{regular expression to test against}
  \item{...}{other arguments passed to \code{\link{grepl}}}
}
\examples{str(mtcars)
expect_that(str(mtcars), prints_text("32 obs"))
expect_that(str(mtcars), prints_text("11 variables"))}
