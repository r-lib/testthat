\name{context}
\alias{context}
\title{Describe the context of a set of tests.}
\usage{
  context(desc, provided = FALSE)
}
\arguments{
  \item{desc}{description of context.  Should start with a
  capital letter.}

  \item{provided}{whether the context was provided or
  inferred automatically (\code{TRUE}), or set explicitly
  in the test (\code{FALSE}). Different reporters will
  handle these test differently, but the typical behavior
  (as exemplified in the \link{SummaryReporter}) is to use
  the provided contexts only for tests which aren't covered
  by an explicit context. Otherwise, they will not be
  printed in the output. Other parsers will ignore provided
  contexts altogether.}
}
\description{
  A context defines a set of tests that test related
  functionality.  Usually you will have one context per
  file, but you may have multiple contexts in a single file
  if you so choose.
}
\examples{
context("String processing")
context("Remote procedure calls")
}

