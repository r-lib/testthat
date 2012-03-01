\name{with_reporter}
\alias{with_reporter}
\title{Execute code in specified reporter.}
\usage{
  with_reporter(reporter, code)
}
\arguments{
  \item{reporter}{test reporter to use}

  \item{code}{code block to execute}
}
\description{
  Changes global reporter to that specified, runs code and
  the returns global reporter back to previous value.
}
\keyword{internal}

