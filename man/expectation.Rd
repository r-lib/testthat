\name{expectation}
\alias{expectation}
\alias{format.expectation}
\alias{print.expectation}
\title{Expectation class.}
\usage{
  expectation(passed, failure_msg, success_msg)
}
\arguments{
  \item{passed}{a single logical value indicating whether
  the test passed (\code{TRUE}), failed (\code{FALSE}), or
  threw an error (\code{NA})}

  \item{failure_msg}{A text description of failure}

  \item{success_msg}{A text description of success}
}
\description{
  Any expectation should return objects of this class - see
  the built in expectations for details.
}
\keyword{internal}

