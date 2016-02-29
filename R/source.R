#' Source a file, directory, or all helpers.
#'
#' The expectation is that the files can be sourced in alphabetical order.
#' Helper scripts are R scripts accompanying test scripts but prefixed by
#' \code{helper}. These scripts are once before the tests are run.
#'
#' @param path Path to tests
#' @param pattern Regular expression used to filter files
#' @param env Environment in which to evaluate code.
#' @param chdir Change working directory to \code{dirname(path)}?
#' @export
source_file <- function(path, env = test_env(), chdir = TRUE) {
  stopifnot(file.exists(path))
  stopifnot(is.environment(env))

  lines <- readLines(path, warn = FALSE)
  srcfile <- srcfilecopy(path, lines, file.info(path)[1, "mtime"], isFile = TRUE)
  exprs <- parse(text = lines, n = -1, srcfile = srcfile)

  n <- length(exprs)
  if (n == 0L) return(invisible())

  if (chdir) {
    old_dir <- setwd(dirname(path))
    on.exit(setwd(old_dir), add = TRUE)
  }
  invisible(eval(exprs, env))
}

#' @rdname source_file
#' @export
source_dir <- function(path, pattern = "\\.[rR]$", env = test_env(),
                       chdir = TRUE) {
  files <- normalizePath(sort(dir(path, pattern, full.names = TRUE)))
  lapply(files, source_file, env = env, chdir = chdir)
}

#' @rdname source_file
#' @export
source_test_helpers <- function(path = "tests/testthat", env = test_env()) {
  source_dir(path, "^helper.*\\.[rR]$", env = env)
}
