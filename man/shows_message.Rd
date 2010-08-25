\name{shows_message}
\title{Expectation: does expression show a message?}
\usage{shows_message(regexp)}

\description{
  Expectation: does expression show a message?
}

\details{
  Needs to match at least one of the messages produced by the
  expression.
}
\alias{shows_message}
\alias{expect_message}
\arguments{
  \item{regexp}{optional regular expression to match. If not specified, just
asserts that expression shows some message.}
}
\examples{expect_that(message("a"), shows_message())
expect_that(message("a"), shows_message("a"))}
