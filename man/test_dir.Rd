\name{test_dir}
\alias{test_dir}
\title{Run all of the tests in a directory.}
\usage{
  test_dir(path, filter = NULL, reporter = "summary",
    env = NULL)
}
\arguments{
  \item{path}{path to tests}

  \item{reporter}{reporter to use}

  \item{filter}{If not \code{NULL}, only tests with file
  names matching this regular expression will be executed.
  Matching will take on the file name after it has been
  stripped of \code{"test-"} and \code{".r"}.}

  \item{env}{environment in which to execute test suite.
  Defaults to new}
}
\description{
  Test files start with \code{test} and are executed in
  alphabetical order (but they shouldn't have
  dependencies). Helper files start with \code{helper} and
  loaded before any tests are run.
}

