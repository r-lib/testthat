\name{watch}
\alias{watch}
\title{Watch a directory for changes (additions, deletions & modifications).}
\usage{watch(path, callback, pattern, hash=TRUE)}

\description{
  Watch a directory for changes (additions, deletions & modifications).
}

\details{
  This is used to power the \code{\link{auto_test}} and
  \code{link{auto_test_package}} functions which are used to rerun
  tests whenever source code changes.

  Use Ctrl + break (windows), Esc (mac gui) or Ctrl + C (command line)
  to stop the watcher.
}
\arguments{
  \item{path}{character vector of paths to watch.  Omit trailing backslash.}
  \item{pattern}{file pattern passed to \code{\link{dir}}}
  \item{callback}{function called everytime a change occurs.  It should
have three parameters: added, deleted, modified, and should return
TRUE to keep watching, or FALSE to stop.}
  \item{hash}{hashes are more accurate at detecting changes, but are slower
for large files.  When FALSE, uses modification time stamps}
}
