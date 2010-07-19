\name{source_dir}
\alias{source_dir}
\title{Load all source files in a directory.}
\usage{source_dir(path, pattern="\\\\.[rR]$", chdir=TRUE)}

\description{
  Load all source files in a directory.
}

\details{
  The expectation is that the files can be sourced in alphabetical
  order.
}
\keyword{internal}
\arguments{
  \item{path}{path to tests}
  \item{pattern}{regular expression used to filter files}
  \item{chdir}{change working directory to path?}
}
