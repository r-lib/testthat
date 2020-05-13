
# +-----------------------------+     +-------------------------------+
# | Main R process              |     | Subprocess 1                  |
# | +------------------------+  |     | +---------------------------+ |
# | | test_dir_parallel()    |  |     | | test_file()               | |
# | | +-------------------+  |  |     | | +-----------------------+ | |
# | | | Event loop        |< ------+  | | | SubprocessReporter    | | |
# | | +-------------------+  |  |  |  | | | +-------------------+ | | |
# | |    |                   |  |  |  | | | | test_that()       | | | |
# | |    v                   |  |  |  | | | +-------------------+ | | |
# | | +-------------------+  |  |  |  | | |    |                  | | |
# | | | Progress2Reporter |  |  |  |  | | |    v                  | | |
# | | +-------------------+  |  |  |  | | | +-------------------+ | | |
# | +------------------------+  |  |--------| signalCondition() | | | |
# +-----------------------------+  |  | | | +-------------------+ | | |
#                                  |  | | +-----------------------+ | |
#                                  |  | +---------------------------+ |
#                                  |  +-------------------------------+
#                                  |  +-------------------------------+
#                                  |--| Subprocess 2                  |
#                                  |  +-------------------------------+
#                                  |  +-------------------------------+
#                                  +--| Subprocess 3                  |
#                                     +-------------------------------+
#                                       ...
#
# ## Notes
#
# * Subprocesses run `callr::r_session` R sessions. They are re-used,
#   one R session can be used for several test_file() calls.
# * We use the callr task queue from this blog post, with minimal
#   changes:  https://www.tidyverse.org/blog/2019/09/callr-task-q/
# * The subprocesses start up in parallel.
# * testthat and the tested package are loaded at startup, the latter
#   with pkgload::load_all(). This will change, test_check() should
#   use library() instead.
# * Helper and setup files are loaded in the subprocesses after this.
# * We store a global `.test_env`, this is the child of the package env.
#   Each test file uses a child of this env.
# * We clean up the subprocesses when test_dir_parallel() returns.
#   This means calling the teardown methods as well, but we only give
#   them a second currently, before killing the whole process tree using
#   ps's env var marker method. (Only works on Linux, Win, macOS).
# * test_file() uses a SubprocessReporter. This signals callr_message
#   conditions for every event, which callr copies over to the main
#   R process.
# * Ideally, these messages would be throttled, i.e. if the test code
#   emits many expectation conditions fast, SubprocessReporter should
#   collect several of them and only emit a condition a couple of times
#   a second. End-of-test and end-of-file events would be transmitted
#   immediately.
# * The main process puts all test files in the task queue, and then
#   runs an event loop.
# * It does an infinite poll currently, but it should do a 100-200ms
#   poll, to be able to create / update a spinner / progress bar.
# * It should also implement timeouts, e.g. 20-30s for each file by
#   default?

test_dir_parallel <- function(path,
                     filter = NULL,
                     reporter = default_reporter(),
                     env = test_env(),
                     ...,
                     encoding = "unknown",
                     load_helpers = TRUE,
                     stop_on_failure = FALSE,
                     stop_on_warning = FALSE,
                     wrap = TRUE) {

  # TODO: handle stop_on_failure
  # TODO: handle stop_on_warning
  # TODO: support timeouts

  # TODO: This is a trick and we'll change it. If 'env' is child of
  # global, then we are using pkgload. Otherwise we are in test_check(),
  # probably, and we can library() the package.

  pkgload <- identical(parent.env(env), .GlobalEnv)
  testthat_dir <- maybe_root_dir(path)

  if (pkgload) {
    pkg_name <- find_pkg_name(testthat_dir)
  } else {
    pkg_name <- Sys.getenv("TESTTHAT_PKG")
  }

  withr::local_envvar(list(
    R_TESTS = "",
    TESTTHAT = "true",
    TESTTHAT_DIR = testthat_dir
  ))

  paths <- find_test_scripts(path, filter, ...)

  if (length(paths) == 0) {
    stop("No matching test file in dir")
  }

  # TODO: do we want to keep the processes for the next test() call?
  # Probably not worth it, they start up in parallel...

  tasks <- NULL
  on.exit(cleanup_test_processes(tasks, path), add = TRUE)
  tasks <- start_test_processes(
    dir = path,
    paths = paths,
    pkg_name = pkg_name,
    testthat_dir = testthat_dir,
    load_helpers = load_helpers,
    pkgload = pkgload
  )

  # Run the event loop

  # Need to remove the environment and source references, otherwise
  # we need to copy a lot of data to the subprocess.

  fun <- function(path) asNamespace("testthat")$subprocess_task(path)
  environment(fun) <- .GlobalEnv
  fun <- utils::removeSource(fun)
  for (path in paths) {
    tasks$push(fun, list(path))
  }

  files <- list()
  results <- list()

  replay <- function(filename) {
    rtr <- get_reporter()
    for (event in files[[filename]]) {
      if ("context" %in% names(event$args)) {
        event$args["context"] <- list(event$args$context %||% ctx)
      }
      do.call(rtr[[event$cmd]], event$args)
    }
    files[[filename]] <- NULL
  }

  with_reporter(reporter,
    while (!tasks$is_idle()) {
      msgs <- tasks$poll(Inf)
      for (x in msgs) {
        if (x$code == 301) {
          m <- x$message
          # TODO: should we keep other messages in the subprocess? Probably.
          if (!inherits(m, "testthat_message")) next
          files[[m$filename]] <- append(files[[m$filename]], list(m))
          if (m$cmd == "end_file") replay(m$filename)

        } else if (x$code == 200) {
          results <- append(results, list(x$result))

        } else if (x$code > 500) {
          # a subprocess has crashed
          # TODO: start another one. Here or in the task queue?
          # TODO: print the partial result and report the crash
        }
      }
    }
    )

  results <- unlist(results, recursive = FALSE)
  results <- testthat_results(results)

  if (stop_on_failure && !all_passed(results)) {
    stop("Test failures", call. = FALSE)
  }

  if (stop_on_warning && any_warnings(results)) {
    stop("Tests generated warnings", call. = FALSE)
  }

  invisible(results)
}

# This is the function that is called for each test file, in the subprocess

subprocess_task <- function(path) {
  test_file(
    path,
    reporter = "subprocess",
    env = .GlobalEnv$.test_env,
    load_helpers = FALSE,
    wrap = TRUE
  )
}

find_pkg_name <- function(dir) {
  desc_path <- file.path(dir, "DESCRIPTION")
  if (!file.exists(desc_path)) {
    stop("no DESCRIPTION file at path '", desc_path, "'", call. = FALSE)
  }

  desc <- read.dcf(desc_path, all = TRUE)
  pkg <- desc$Package
  if (!nzchar(pkg)) {
    stop("no 'Package' field in DESCRIPTION file '", desc_path, "'", call. = FALSE)
  }
  pkg
}

start_test_processes <- function(dir, paths, pkg_name, testthat_dir,
                                 load_helpers, pkgload) {

  # TODO: detect number of CPUs
  # TODO: pkgload or not?
  num_proc <- min(getOption("Ncpus", 4), length(paths))
  proc <- replicate(num_proc, NULL)

  load_hook <- rlang::expr(asNamespace("testthat")$process_setup(
    !!dir,
    !!pkg_name,
    !!testthat_dir,
    !!load_helpers,
    !!pkgload
  ))
  task_q$new(concurrency = num_proc, load_hook = load_hook)
}

#' This function is called from the subprocess at startup
#'
#' @param package Name of the tested package. This is needed, because we
#' need to attach the package in the subprocess.
#' @param testthat_dir The root directory of the package being tested.
#' @param pkgload Whether to use `pkgload::load_all()` or `library()` to
#' attach the tested package.
#'
#' @keywords internal

process_setup <- function(path, package, testthat_dir, load_helpers,
                          pkgload) {

  # TODO: meaningful error if startup fails

  library(testthat)
  if (pkgload) {
    ns_env <- pkgload::load_all(
      path,
      quiet = TRUE,
      export_all = TRUE
    )$env
  } else {
    library(package, character.only = TRUE)
    ns_env <- test_pkg_env(package)
  }

  .GlobalEnv$.test_env <- new.env(parent = ns_env)

  if (load_helpers) {
    source_test_helpers(path, .GlobalEnv$.test_env)
  }
  source_test_setup(path, .GlobalEnv$.test_env)
}

cleanup_test_processes <- function(tasks, path) {
  num <- nrow(tasks) %||% 1L

  topoll <- list()
  for (i in seq_len(num)) {
    if (!is.null(tasks$worker[[i]])) {
      tasks[[i]]$call(
        function(path) { source_test_teardown(path, .GlobalEnv$.ns_env) },
        list(path)
      )
      topoll <- c(topoll, tasks[[i]]$get_poll_connection())
    }
  }

  limit <- Sys.time() + 1
  while (length(topoll) > 0 && (timeout <- limit - Sys.time()) > 0) {
    timeout <- as.double(timeout, unit = "secs") * 1000
    pr <- processx::poll(topoll, as.integer(timeout))
    topoll <- topoll[pr != "ready"]
  }

  for (i in seq_len(num)) {
    if (!is.null(tasks$worker[[i]])) {
      # TODO: kill_tree() only works on Linux, Win, macOS
      tasks[[i]]$kill_tree()
    }
  }
}

#' The reporter in the subprocess
#'
#' It forwards events to the main process.
#'
#' @include reporter.R

SubprocessReporter <- R6::R6Class("SubprocessReporter",
  inherit = Reporter,
  public = list(
    start_reporter = function(...) { },
    start_context = function(context) {
      private$ctx <- context
      private$event("start_context", context)
    },
    start_test = function(context, test) {
      private$event("start_test", context %||% private$ctx, test)
    },
    start_file = function(filename) {
      private$filename <- filename
      private$ctx <- context_name(filename)
      private$event("start_file", filename)
    },
    add_result = function(context, test, result) {
      if (inherits(result, "expectation_success")) {
        result[] <- result[c("message", "test")]
      }
      private$event("add_result", context %||% private$ctx, test, result)
    },
    end_test = function(context, test) {
      private$event("end_test", context %||% private$ctx, test)
    },
    end_context = function(context) {
      private$event("end_context", context)
    },
    end_reporter = function(...) {},
    end_file = function() {
      private$event("end_file")
    }
  ),

  private = list(
    filename = NULL,
    ctx = NULL,
    event = function(cmd, ...) {
      msg <- list(
        code = 301,
        cmd = cmd,
        filename = private$filename,
        args = list(...)
      )
      class(msg) <- c("testthat_message", "callr_message", "condition")
      signalCondition(msg)
    }
  )
)
