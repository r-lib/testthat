\name{parallel_test_dir}
\alias{parallel_test_dir}
\title{Run all of the tests in a directory in parallel}
\usage{
  parallel_test_dir(path, filter = NULL,
    nnodes = detectCores(), type = default_cluster_type(),
    quiet = FALSE)
}
\arguments{
  \item{path}{path to tests}

  \item{filter}{forwarded to \code{\link{test_dir}}}

  \item{nnodes}{number of nodes to use for parallelization}

  \item{type}{type of parallelization cluster, cf
  \code{\link[parallel]{makeCluster}}}

  \item{quiet}{whether to be silent}
}
\description{
  Run all of the tests in a directory in parallel
}
\seealso{
  \code{\link{test_dir}}
}

