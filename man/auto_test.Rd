\name{auto_test}
\alias{auto_test}
\title{Watches code and tests for changes, rerunning tests as appropriate.}
\usage{auto_test(code_path, test_path, suite=SummarySuite)}

\description{
  Watches code and tests for changes, rerunning tests as appropriate.
}

\details{
  The idea behind \code{auto_test} is that you just leave it running
  while you develop your code.  Everytime you save a file it will be
  automatically tested and you can easily see if your changes have
  caused any test failures.

  The current strategy for rerunning tests is as follows:

  * if any code has changed, then those files are reloaded and all
  tests rerun * otherwise, each new or modified test is run

  In the future, \code{auto_test} might implement on of the following
  more intelligent alternatives:

  * Use codetools to build up dependency tree and then rerun tests only
  when a dependency changes.

  * Mimic ruby's autotest and rerun only failing tests until they
  parse, and then rerun all test.
}
\seealso{\code{\link{auto_test_package}}}
\keyword{debugging}
\arguments{
  \item{code_path}{path to directory containing code}
  \item{test_path}{path to directory containing tests}
  \item{suite}{test reporter to use}
}
