
MainprocessSnapshotReporter <- R6::R6Class("MainprocessSnapshotReporter",
  inherit = SnapshotReporter,
  public = list(
    end_file = function() {
      # No thing to do, this is done in the subprocess
    }
  )
)

SubprocessSnapshotReporter <- R6::R6Class("SubprocessSnapshotReporter",
  inherit = SnapshotReporter,
  public = list(
    start_file = function(path, test = NULL) {
      private$filename <- path
      private$test <- test
      super$start_file(path, test)
    },

    end_file = function() {
      private$filename <- NULL
      super$end_file()
    },

    end_context = function(context) {
      private$context <- NULL
      super$end_context()
    },

    end_test = function(context, test) {
      private$context <- NULL
      private$test <- NULL
      super$end_test(context, test)
    },

    start_test = function(context, test) {
      private$context <- context
      private$test <- test
      super$start_test(context, test)
    },

    announce_file_snapshot = function(name) {
      private$event("announce_file_snapshot", name)
      super$announce_file_snapshot(name)
    },

    end_reporter = function() {
      # do not delete unused snapshots, that's up to the main process
    }
  ),
  private = list(
    filename = NULL,
    context = NULL,
    test = NULL,
    event = function(cmd, ...) {
      msg <- list(
        code = PROCESS_MSG,
        type = "snapshotter",
        cmd = cmd,
        filename = private$filename,
        context = private$context,
        test = private$test,
        time = NULL,
        args = list(...)
      )
      class(msg) <- c("testthat_message", "callr_message", "condition")
      signalCondition(msg)
    }
  )
)
