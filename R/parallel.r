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
#' @param type    type of parallelization cluser, 
#'                 cf \code{\link[parallel]{makeCluster}}
#' @importFrom parallel   clusterCall clusterEvalQ detectCores makeCluster 
#'    stopCluster
#' @export
#' @seealso \code{\link{test_dir}}
parallel_test_dir <- function(path, filter = NULL, nnodes = detectCores(), 
                  type = default_cluster_type() ) {
  
  scripts <- find_test_scripts(path, filter)
  if (length(scripts) == 0) stop('No matching test file in dir') 
  
  env <- if (type == FORK()) test_env() else NULL
  
  # only source for a FORK cluster since all the vars will be available
  # and before forking the cluster
  if (type == FORK())
    source_test_helpers(path, env)

  nnodes <- min(length(scripts), nnodes)
  # debugonce(parallel:::newPSOCKnode)
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
    # source the helpers in each node
    l <- clusterCall(cluster, source_test_helpers, path)
  }

  progress <- function(x) cat('Testing', basename(x), '\n')
  results <- cluster_lapply_lb(cluster, scripts, 
    function(x) test_file(x, reporter = NULL, env = env)
    , progress = progress)
#  res <- cluster_lapply_lb(cluster, 1, function(x) sessionInfo())
  results <- unlist(results, recursive = FALSE)
  
  invisible(structure(results, class = 'testthat_results'))
}