PSOCK <- function() 'PSOCK'
FORK <- function() 'FORK'


# modified version of parallel:::clusterApplyLB to add callback support
# to monitor progress
cluster_lapply_lb <- function (cl, x, fun, progress = NULL, ...) {
  stopifnot(is.function(fun))
  
  wrapper <- argfun <- function(i) c(list(x[[i]]), list(...))
  if (!is.null(progress)) 
    wrapper <- function(x) { y <- argfun(x); progress(y[[1]]); y }
  
  parallel:::dynamicClusterApply(cl, fun, length(x), wrapper)
}

on_windows <- function() {
  .Platform$OS.type == 'windows' 
}

default_cluster_type <- function() {
  if (on_windows()) PSOCK() else FORK()
}

is_fork_cluster <- function(cluster) {
  inherits(cluster[[1]], 'forknode')
}

#' @title Run all of the tests in a directory in parallel
#'
#' @description 
#' The tests will be parallelized by test file, i.e. each (matched)
#' individual test file from "path" will be run on a cluster node. 
#' 
#' @section Windows:
#' On platforms that do not implement fork (such as Windows), this is much
#' more involved since the user has to initialize the cluster nodes properly
#' , e.g. making available in the R sessions the R objects and functions to 
#' be tested. This can be done by first creating a PSOCK cluster, then 
#' by initializing it, and finally by supplying this cluster to this function.
#' 
#' @param path    path to tests
#' @param filter  forwarded to \code{\link{test_dir}}
#' @inheritParams parallel::makeCluster
#' @param quiet   whether to be silent
#' @importFrom parallel  clusterCall detectCores makeCluster stopCluster
#' @export
#' @seealso \code{\link{test_dir}}
parallel_test_dir <- function(path, filter = NULL, nnodes = detectCores(), 
                type = default_cluster_type(), cl = NULL, quiet = FALSE) {
  
  scripts <- find_test_scripts(path, filter)
  if (length(scripts) == 0) stop('No matching test file in dir') 
  
  env <- if (type == FORK()) test_env() else NULL
  
  # only source for a FORK cluster to make the vars available
  # BEFORE forking the cluster
  if (type == FORK()) source_test_helpers(path, env)

  if (is.null(cl)) {
    nnodes <- min(length(scripts), nnodes)
    cl <- makeCluster(nnodes, type)
    on.exit(stopCluster(cl))
  }
 
  if (!is_fork_cluster(cl)) {
    mc_boostrap_testthat(cl)
    clusterCall(cl, source_test_helpers, path)
  }

  progress <- if (quiet) NULL
    else function(x) message('Testing ', basename(x))

  .test_file <- function(x) test_file(x, reporter = NULL, env = env)
  results <- cluster_lapply_lb(cl, scripts, progress = progress, .test_file)

  results <- unlist(results, recursive = FALSE)
  class(results) <-'testthat_results' 
  
  invisible(results)
}

# hack to be able to use/test a local dev version of testthat and have it 
# use in the cluster nodes as well
# only used for its side-effect
mc_boostrap_testthat <- function(cl) {
  # load testthat (maybe from a temp install directory for testing)
  lib <- .libPaths()
  setup <- eval(bquote(function() {
        .libPaths(.(lib))
        library(testthat) 
      }))
  ### tricky: do not tie the setup function env to our current namespace
  ### i.e testthat, otherwise testthat will be loaded automatically
  ### before setting the libpath
  environment(setup) <- globalenv()
  clusterCall(cl, setup)
  invisible()
}
