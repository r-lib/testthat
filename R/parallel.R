
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
# * Helper and setup files are loaded in the subprocesses after this.
# * The main process puts all test files in the task queue, and then
#   runs an event loop.

test_files_parallel <- function(
                       test_dir,
                       test_package,
                       test_paths,
                       load_helpers = TRUE,
                       reporter = default_reporter(),
                       env = NULL,
                       stop_on_failure = FALSE,
                       stop_on_warning = FALSE,
                       load_package = c("none", "installed", "source")
                       ) {


  reporters <- test_files_reporter(reporter)

  # TODO: support timeouts. 20-30s for each file by default?
  # TODO: detect number of CPUs
  num_workers <- min(getOption("Ncpus", 4), length(test_paths), 4)

  # Set up work queue ------------------------------------------
  queue <- NULL
  withr::defer(queue_teardown(queue))

  # Start workers in parallel and add test tasks to queue.
  queue <- queue_setup(
    test_paths = test_paths,
    test_package = test_package,
    test_dir = test_dir,
    load_helpers = load_helpers,
    num_workers = num_workers,
    load_package = load_package
  )

  files <- list()

  with_reporter(reporters$multi,
    while (!queue$is_idle()) {
      # TODO: poll for 100-200ms to be able to update a spinner
      msgs <- queue$poll(Inf)
      for (x in msgs) {
        if (x$code != PROCESS_MSG) {
          next
        }

        m <- x$message
        if (!inherits(m, "testthat_message")) {
          message(m)
          next
        }

        # Record all events until we get end of file, then we replay them all
        # with the local reporters. This prevents out of order reporting.
        if (m$cmd != "DONE") {
          files[[m$filename]] <- append(files[[m$filename]], list(m))
        } else {
          replay_events(reporters$multi, files[[m$filename]])
          reporters$multi$end_context_if_started()
          files[[m$filename]] <- NULL
        }
      }
    }
  )

  test_files_check(reporters$list$get_results(),
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning
  )
}

replay_events <- function(reporter, events) {
  for (event in events) {
    do.call(reporter[[event$cmd]], event$args)
  }
}

queue_setup <- function(test_paths,
                        test_package,
                        test_dir,
                        num_workers,
                        load_helpers,
                        load_package) {

  # TODO: observe `load_package`, but the "none" default is not
  # OK for the subprocess, because it'll not have the tested package
  if (load_package == "none") load_package <- "source"

  # TODO: similarly, load_helpers = FALSE, coming from devtools,
  # is not appropriate in the subprocess
  load_helpers <- TRUE

  test_package <- test_package %||% Sys.getenv("TESTTHAT_PKG")

  # TODO: meaningful error if startup fails
  load_hook <- expr(asNamespace("testthat")$queue_process_setup(
    test_package = !!test_package,
    test_dir = !!test_dir,
    load_helpers = !!load_helpers,
    load_package = !!load_package
  ))
  queue <- task_q$new(concurrency = num_workers, load_hook = load_hook)

  fun <- transport_fun(function(path) asNamespace("testthat")$queue_task(path))
  for (path in test_paths) {
    queue$push(fun, list(path))
  }

  queue
}

queue_process_setup <- function(test_package, test_dir, load_helpers, load_package) {
  env <- asNamespace("testthat")$test_files_setup_env(
    test_package,
    test_dir,
    load_package
  )
  asNamespace("testthat")$test_files_setup_state(
    test_dir = test_dir,
    test_package = test_package,
    load_helpers = load_helpers,
    env = env,
    .env = .GlobalEnv
  )

  # Save test environment in global env where it can easily be retrieved
  .GlobalEnv$.test_env <- env
}

queue_task <- function(path) {
  env <- .GlobalEnv$.test_env

  withr::local_envvar(c("TESTTHAT_PARALLEL" = "true"))
  reporters <- test_files_reporter(SubprocessReporter$new())
  with_reporter(reporters$multi, test_one_file(path, env = env))
  NULL
}

# Clean up subprocesses: we call teardown methods, but we only give them a
# second, before killing the whole process tree using ps's env var marker
# method.
queue_teardown <- function(queue) {
  if (is.null(queue)) {
    return()
  }

  tasks <- queue$list_tasks()
  num <- nrow(tasks)

  clean_fn <- function() {
    withr::deferred_run(.GlobalEnv)
  }

  topoll <- list()
  for (i in seq_len(num)) {
    if (!is.null(tasks$worker[[i]])) {
      tasks$worker[[i]]$call(clean_fn)
      close(tasks$worker[[i]]$get_input_connection())
      topoll <- c(topoll, tasks$worker[[i]]$get_poll_connection())
    }
  }

  limit <- Sys.time() + 1
  while (length(topoll) > 0 && (timeout <- limit - Sys.time()) > 0) {
    timeout <- as.double(timeout, units = "secs") * 1000
    pr <- processx::poll(topoll, as.integer(timeout))
    topoll <- topoll[pr != "ready"]
  }

  for (i in seq_len(num)) {
    if (!is.null(tasks$worker[[i]])) {
      # TODO: kill_tree() only works on Linux, Win, macOS
      tasks$worker[[i]]$kill_tree()
    }
  }
}

# Reporter that just forwards events in the subprocess back to the main process
#
# Ideally, these messages would be throttled, i.e. if the test code
# emits many expectation conditions fast, SubprocessReporter should
# collect several of them and only emit a condition a couple of times
# a second. End-of-test and end-of-file events would be transmitted
# immediately.
SubprocessReporter <- R6::R6Class("SubprocessReporter",
  inherit = Reporter,
  public = list(
    start_file = function(filename) {
      private$filename <- filename
      private$event("start_file", filename)
    },
    start_test = function(context, test) {
      private$event("start_test", context, test)
    },
    start_context = function(context) {
      private$event("start_context", context)
    },
    add_result = function(context, test, result) {
      if (inherits(result, "expectation_success")) {
        # Strip bulky components to reduce data transfer cost
        result[] <- result[c("message", "test")]
      }
      private$event("add_result", context, test, result)
    },
    end_test = function(context, test) {
      private$event("end_test", context, test)
    },
    end_context = function(context) {
      private$event("end_context", context)
    },
    end_file = function() {
      private$event("end_file")
    },
    end_reporter = function() {
      private$event("DONE")
    }
  ),

  private = list(
    filename = NULL,
    event = function(cmd, ...) {
      msg <- list(
        code = PROCESS_MSG,
        cmd = cmd,
        filename = private$filename,
        time = proc.time()[[3]],
        args = list(...)
      )
      class(msg) <- c("testthat_message", "callr_message", "condition")
      signalCondition(msg)
    }
  )
)
