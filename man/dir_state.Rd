\name{dir_state}
\alias{dir_state}
\title{Capture the state of a directory.}
\usage{dir_state(path, pattern, hash=TRUE)}

\description{
  Capture the state of a directory.
}
\keyword{internal}
\arguments{
  \item{path}{path to directory}
  \item{pattern}{regular expression with which to filter files}
  \item{hash}{use hash (slow but accurate) or time stamp (fast but less 
accurate)}
}
