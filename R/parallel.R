
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
                       reporter = default_parallel_reporter(),
                       env = NULL,
                       stop_on_failure = FALSE,
                       stop_on_warning = FALSE,
                       wrap = TRUE,  # unused, to match test_files signature
                       load_package = c("none", "installed", "source")
                       ) {


  reporters <- test_files_reporter(reporter)

  # TODO: support timeouts. 20-30s for each file by default?

  num_workers <- min(default_num_cpus(), length(test_paths))
  inform(paste0(
    "Starting ", num_workers, " test process",
    if (num_workers != 1) "es"
  ))

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

  with_reporter(reporters$multi, {
    parallel_updates <- reporter$capabilities$parallel_updates
    if (parallel_updates) {
      parallel_event_loop_smooth(queue, reporters)
    } else {
      parallel_event_loop_chunky(queue, reporters)
    }
  })

  test_files_check(reporters$list$get_results(),
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning
  )
}

default_num_cpus <- function() {
  # Use common option, if set
  ncpus <- getOption("Ncpus", NULL)
  if (!is.null(ncpus)) {
    ncpus <- suppressWarnings(as.integer(ncpus))
    if (is.na(ncpus)) abort("`getOption(Ncpus)` must be an integer")
    return(ncpus)
  }

  # Otherwise use env var if set
  ncpus <- Sys.getenv("TESTTHAT_CPUS", "")
  if (ncpus != "") {
    ncpus <- suppressWarnings(as.integer(ncpus))
    if (is.na(ncpus)) abort("TESTTHAT_CPUS must be an integer")
    return(ncpus)
  }

  # Otherwise 2
  2L
}

parallel_event_loop_smooth <- function(queue, reporters) {
  update_interval <- 0.1
  next_update <- proc.time()[[3]] + update_interval

  while (!queue$is_idle()) {
    # How much time do we have to poll before the next UI update?
    now <- proc.time()[[3]]
    poll_time <- max(next_update - now, 0)
    next_update <- now + update_interval

    msgs <- queue$poll(poll_time)

    updated <- FALSE
    for (x in msgs) {
      if (x$code != PROCESS_MSG) {
        next
      }

      m <- x$message
      if (!inherits(m, "testthat_message")) {
        message(m)
        next
      }

      if (m$cmd != "DONE") {
        reporters$multi$start_file(m$filename)
        do.call(reporters$multi[[m$cmd]], m$args)
        updated <- TRUE
      }
    }

    # We need to spin, even if there were no events
    if (!updated) reporters$multi$update()
  }
}

parallel_event_loop_chunky <- function(queue, reporters) {
  files <- list()
  while (!queue$is_idle()) {
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

  # First we load the package "manually", in case it is testthat itself
  load_hook <- expr({
    switch(!!load_package,
      installed = library(!!test_package, character.only = TRUE),
      source = pkgload::load_all(!!test_dir, helpers = FALSE, quiet = TRUE)
    )
    asNamespace("testthat")$queue_process_setup(
      test_package = !!test_package,
      test_dir = !!test_dir,
      load_helpers = !!load_helpers,
      load_package = "none"
    )
  })
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

  withr::local_envvar(c("TESTTHAT_IS_PARALLEL" = "true"))
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
    quit(save = "no", status = 1L, runLast = TRUE)
  }

  topoll <- list()
  for (i in seq_len(num)) {
    if (!is.null(tasks$worker[[i]])) {
      # The worker might have crashed or exited, so this might fail.
      # If it does then we'll just ignore that worker
      tryCatch({
        tasks$worker[[i]]$call(clean_fn)
        topoll <- c(topoll, tasks$worker[[i]]$get_poll_connection())
      }, error = function(e) tasks$worker[i] <- list(NULL))
    }
  }

  # Give covr time to write out the coverage files
  if (in_covr()) grace <- 30L else grace <- 3L
  limit <- Sys.time() + grace
  while (length(topoll) > 0 && (timeout <- limit - Sys.time()) > 0) {
    timeout <- as.double(timeout, units = "secs") * 1000
    pr <- processx::poll(topoll, as.integer(timeout))
    topoll <- topoll[pr != "ready"]
  }

  for (i in seq_len(num)) {
    if (!is.null(tasks$worker[[i]])) {
      tryCatch(
        close(tasks$worker[[i]]$get_input_connection()),
        error = function(e) NULL
      )
      if (ps::ps_is_supported()) {
        tasks$worker[[i]]$kill_tree()
      } else {
        tasks$worker[[i]]$kill()
      }
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
        result[["srcref"]] <- NULL
        result[["trace"]] <- NULL
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
