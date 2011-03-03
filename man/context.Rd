\name{context}
\alias{context}
\title{Describe the context of a set of tests.}
\usage{context(desc)}

\description{
  Describe the context of a set of tests.
}

\details{
  A context defines a set of tests that test related
  functionality.  Usually you will have one context per
  file, but you may have multiple contexts in a single file
  if you so choose.
}
\arguments{
  \item{desc}{description of context.  Should start with a capital letter.}
}
\examples{context("String processing")
context("Remote procedure calls")}
