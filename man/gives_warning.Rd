\name{gives_warning}
\alias{gives_warning}
\title{Expectation: does expression give a warning?}
\usage{gives_warning(regexp)}
\description{Expectation: does expression give a warning?}
\details{Needs to match at least one of the warnings produced by the expression.}
\arguments{\item{regexp}{optional regular expression to match. If not specified, just
asserts that expression gives some warning.}}
\examples{expect_that(warning("a"), gives_warning())
expect_that(warning("a"), gives_warning("a"))}
