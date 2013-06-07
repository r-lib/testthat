\name{evaluate_promise}
\alias{evaluate_promise}
\title{Evaluate a promise, capturing all types of output.}
\usage{
  evaluate_promise(code, capture_error = FALSE)
}
\arguments{
  \item{code}{Code to evaluate. This should be unevaluated
  code.}
}
\description{
  This uses \code{\link[evaluate]{evaluate}} a promise,
  returning the result, test, messages and warnings that
  the code creates in a list. It is used to evaluate code
  for all test that tests, ensuring that (as much as
  possible) any spurious output is suppressed during the
  testing process.
}

