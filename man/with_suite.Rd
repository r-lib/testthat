\name{with_suite}
\alias{with_suite}
\title{Execute code in specified suite...}
\usage{with_suite(suite, code)}

\description{
  Execute code in specified suite
}

\details{
  Changes global suite to that specified, runs code and the returns
  global suite back to previous value.
}
\keyword{internal}
\arguments{
  \item{suite}{test suite to use}
  \item{code}{code block to execute}
}
