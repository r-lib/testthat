\name{test_file}
\alias{test_file}
\title{Run all tests in specified file.}
\usage{
test_file(path, reporter = "summary", enclos = parent.env(globalenv()))
}
\arguments{
  \item{path}{path to file}

  \item{reporter}{reporter to use}

  \item{enclos}{the parent environment for the environment
  to run the tests inside}
}
\value{
a data frame of the summary of test results
}
\description{
Run all tests in specified file.
}

