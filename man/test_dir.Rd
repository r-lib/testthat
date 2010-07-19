\name{test_dir}
\alias{test_dir}
\title{Run all of the tests in a directory.}
\usage{test_dir(path, reporter="summary")}

\description{
  Run all of the tests in a directory.
}

\details{
  Test files start with \code{test} and are executed in alphabetical
  order (but they shouldn't have dependencies). Helper files start with
  \code{helper} and loaded before any tests are run.
}
\arguments{
  \item{path}{path to tests}
  \item{reporter}{reporter to use}
}
