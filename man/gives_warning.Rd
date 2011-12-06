\name{gives_warning}
\alias{expect_warning}
\alias{gives_warning}
\title{Expectation: does expression give a warning?}
\usage{
  gives_warning(regexp = NULL)
}
\arguments{
  \item{regexp}{optional regular expression to match. If
  not specified, just asserts that expression gives some
  warning.}
}
\description{
  Needs to match at least one of the warnings produced by
  the expression.
}
\examples{
expect_that(warning("a"), gives_warning())
expect_that(warning("a"), gives_warning("a"))
}

