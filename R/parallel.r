PSOCK <- function() 'PSOCK'
FORK <- function() 'FORK'

on_windows <- function() {
  .Platform$OS.type == 'windows' 
}

default_cluster_type <- function() {
  if (on_windows()) PSOCK() else FORK()
}

is_fork_cluster <- function(cluster) {
  inherits(cluster[[1]], 'forknode')
}

cluster_lapply_lb <- function (cl, x, fun, progress = NULL, ...) {
  stopifnot(is.function(fun))
  
  argfun <- function(i) c(list(x[[i]]), list(...))
  argfun1 <- if (!is.null(progress)) 
          function(x) { y <- argfun(x); progress(y[[1]]); y }
    else
      argfun

  parallel:::dynamicClusterApply(cl, fun, length(x), argfun1)
}

#' Run all of the tests in a directory in parallel
#'
#' @param path    path to tests
#' @param filter  forwarded to \code{\link{test_dir}}
#' @param nnodes  number of nodes to use for parallelization
#' @param type    type of parallelization cluster, 
#'                 cf \code{\link[parallel]{makeCluster}}
#' @param quiet   whether to be silent
#' @importFrom parallel   clusterCall clusterEvalQ detectCores makeCluster 
#'    stopCluster
#' @export
#' @seealso \code{\link{test_dir}}
parallel_test_dir <- function(path, filter = NULL, nnodes = detectCores(), 
                  type = default_cluster_type(), quiet = FALSE) {
  
  scripts <- find_test_scripts(path, filter)
  if (length(scripts) == 0) stop('No matching test file in dir') 
  
  env <- if (type == FORK()) test_env() else NULL
  
  # only source for a FORK cluster to make the vars available
  # before forking the cluster
  if (type == FORK())
    source_test_helpers(path, env)

  nnodes <- min(length(scripts), nnodes)
  cluster <- makeCluster(nnodes, type)
  on.exit(stopCluster(cluster))

  # setup the cluster nodes if needed
  if (type != FORK()) {
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
    l <- clusterCall(cluster, setup)

    l <- clusterCall(cluster, source_test_helpers, path)
  }

  progress <- if (quiet) NULL
    else function(x) message('Testing ', basename(x))

  results <- cluster_lapply_lb(cluster, scripts, progress = progress, 
    fun = function(x) test_file(x, reporter = NULL, env = env))
  results <- unlist(results, recursive = FALSE)
  
  invisible(structure(results, class = 'testthat_results'))
}