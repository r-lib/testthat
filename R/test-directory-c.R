
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

  # TODO: `env` will be ignored, silently. Is that ok?
  # TODO: handle stop_on_failure
  # TODO: handle stop_on_warning
  # TODO: support timeouts

  # In case the test code also calls test_dir(), we'll make that
  # non-parallel, unless explicitly requested.

  Sys.unsetenv("TESTTHAT_PARALLEL")

  testthat_dir <- maybe_root_dir(path)
  pkg_name <- find_pkg_name(testthat_dir)

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
    load_helpers = load_helpers
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

  with_reporter("progress2",
    while (!tasks$is_idle()) {
      msgs <- tasks$poll(Inf)
      for (x in msgs) {
        if (x$code == 301) {
          rep <- get_reporter()
          m <- x$message
          switch(
            m$cmd,
            "start-test" = rep$start_test(m$filename, m$context, m$test),
            "start-file" = rep$start_file(m$filename),
            "add-result" = {
              rep$add_result(m$filename, m$context, m$test, m$output)
            },
            "end-test" = rep$end_test(m$filename, m$context, m$test),
            "end-file" = rep$end_file(m$filename),
            stop("Unknown message from subprocess, internal error")
          )

        } else if (x$code == 200) {
          # a file is done, nothing to do here

        } else if (x$code > 500) {
          # a subprocess has crashed
          # TODO: start another one. Here or in the task queue?
        }
      }
    }
  )
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
  # We don't need to return the result to the main process
  NULL
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
                                 load_helpers = FALSE) {

  # TODO: detect number of CPUs
  # TODO: pkgload or not?
  num_proc <- min(getOption("Ncpus", 4), length(paths))
  proc <- replicate(num_proc, NULL)

  load_hook <- rlang::expr(asNamespace("testthat")$process_setup(
    !!dir,
    !!pkg_name,
    !!testthat_dir,
    !!load_helpers
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
                          pkgload = FALSE) {

  # TODO: decide between library() and pkgload automatically, so we do
  # not use load_all() in test_check()
  saveRDS(as.list(environment()), file = "/tmp/x.rds")
  library(testthat)
  ns_env <- pkgload::load_all(
    path,
    quiet = TRUE,
    export_all = TRUE
  )$env

  .GlobalEnv$.test_env <- new.env(parent = ns_env)

  if (load_helpers) {
    source_test_helpers(path, .GlobalEnv$.test_env)
  }
  source_test_setup(path, .GlobalEnv$.test_env)
}

cleanup_test_processes <- function(tasks, path) {
  cat("Cleaning up\n")
  num <- nrow(tasks) %||% 1L

  topoll <- list()
  for (i in seq_len(num)) {
    if (!is.null(tasks$worker[[i]])) {
      tasks[[i]]$call(
        function(path) { source_test_teardown(path, .GlobalEnv$.ns_path) },
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
    start_reporter = function() { },
    start_context = function(context) {},
    start_test = function(context, test) {
      private$event("start-test", test = test)
    },
    start_file = function(filename) {
      private$filename <- filename
      private$event("start-file")
    },
    add_result = function(context, test, result) {

      if (expectation_broken(result)) {
        output <- list(
          result = "failure",
          message = c(
            paste0("Failure in ", private$filename),
            issue_summary(result)
          )
        )
      } else if (expectation_skip(result)) {
        output <- list(
          result = "failure",
          message = c(
            paste0("Skip in ", private$filename),
            issue_summary(result)
          )
        )
      } else if (expectation_warning(result)) {
        output <- list(
          result = "warning",
          message = c(
            paste0("Skip in ", private$filename),
            issue_summary(result)
          )
        )
      } else {
        output <- list(
          result = "success",
          message = paste0("Success in ", private$filename)
        )
      }

      private$event(
        "add-result",
        context = context,
        test = test,
        output = output
      )
    },
    end_test = function(context, test) {
      private$event("end-test", context = context, test = test)
    },
    end_context = function(context) {},
    end_reporter = function() {},
    end_file = function() {
      private$event("end-file")
    }
  ),

  private = list(
    filename = NULL,
    event = function(cmd, ...) {
      msg <- list(code = 301, cmd = cmd, filename = private$filename, ...)
      class(msg) <- c("testthat_message", "callr_message", "condition")
      signalCondition(msg)
    }
  )
)

#' @family reporters

Progress2Reporter <- R6::R6Class("Progress2Reporter",
  inherit = Reporter,
  public = list(
    concurrent = TRUE,

    start_reporter = function(...) {
      self$cat_line("Starting reporter")
    },

    start_context =  function(...) {},

    start_test = function(filename, context, test) {
      self$cat_line("Starting ", filename, ", test: ", test)
    },

    start_file = function(filename) {
      self$cat_line("Starting file: ", filename)
    },

    add_result = function(filename, context, test, output) {
      if (output$result == "success") {
        self$cat_line("Success in ", filename)
      } else {
        self$cat_tight(output$message)
      }
    },

    end_test = function(filename, context, test) {
      self$cat_line("In ", filename, ", done with test: ", test)
    },

    end_context = function(...) {},

    end_reporter = function(...) {
      self$cat_line("Done with reporter")
    },

    end_file = function(filename) {
      self$cat_line("Done with file: ", filename)
    },

    is_full = function(...) FALSE
  )
)
