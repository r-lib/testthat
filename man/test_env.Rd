\name{test_env}
\alias{test_env}
\title{Generate default testing environment.}
\usage{
test_env()
}
\description{
We use a new environment which inherits from the parent of
\code{\link{globalenv}}, which is the first package loaded
in the search path. This isolates tests from objects in the
global environement but still allows them to find needed
functions.
}
\keyword{internal}

