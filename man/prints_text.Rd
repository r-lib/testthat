\name{prints_text}
\title{Expectation: does printed output match a regular expression?}
\usage{prints_text(regexp, ...)}

\description{
  Expectation: does printed output match a regular expression?
}
\alias{prints_text}
\alias{expect_output}
\arguments{
  \item{regexp}{regular expression to test against}
  \item{...}{other arguments passed to \code{\link{grepl}}}
}
\examples{str(mtcars)
expect_that(str(mtcars), prints_text("32 obs"))
expect_that(str(mtcars), prints_text("11 variables"))
expect_output(str(mtcars), "11 variables")}
