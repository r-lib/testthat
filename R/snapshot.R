
# Reporter ----------------------------------------------------------------

SnapshotReporter <- R6::R6Class("SnapshotReporter",
  inherit = Reporter,
  public = list(
    file = NULL,
    test = NULL,
    file_seen = character(),
    i = 0,
    file_changed = FALSE,

    old_snaps = NULL,
    cur_snaps = NULL,
    new_snaps = NULL,

    start_file = function(path) {
      self$file <- context_start_file(context_name(path))
      self$file_seen <- c(self$file_seen, path)

      self$file_changed <- FALSE
      self$old_snaps <- self$snaps_read()
      self$cur_snaps <- list()
      self$new_snaps <- list()
    },
    start_test = function(test, context) {
      self$test <- test
      self$i <- 0L

      self$cur_snaps[[test]] <- list()
      self$new_snaps[[test]] <- list()
    },

    # Called by expectation
    take_snapshot = function(value) {
      self$i <- self$i + 1L

      old <- self$old_snap[[self$test]][[i]]
      self$new_snap[[self$test]][[i]] <- value

      if (self$has_snapshot(i)) {
        self$cur_snap[[self$test]][[i]] <- old

        comp <- waldo::compare(old, value)

        if (length(comp) > 0L) {
          self$file_changed <- TRUE
        }
        comp
      } else {
        self$cur_snap[[self$test]][[i]] <- value

        warn("Adding new snapshot")
        character()
      }
    },

    end_test = function(context, test) {
      self$test <- NULL
    },

    end_file = function() {
      dir.create("snaps", showWarnings = FALSE)

      self$snaps_write(self$cur_snaps)
      if (self$file_changed) {
        self$snaps_write(self$new_snaps, ".new")
      } else {
        self$snaps_delete(".new")
      }

      self$file <- NULL
      self$cur_snaps <- NULL
    },
    end_reporter = function() {
      # check we've seen all files before cleaning up
      tests <- dir()
      if (!all(tests %in% self$files_seen)) {
        return()
      }

      snaps <- dir("snaps")
      outdated <- !context_name(snaps) %in% context_name(tests)
      unlink(snaps[outdated])

      if (length(dir("snaps") == 0)) {
        unlink("snaps")
      }
    },

    active = function() {
      !identical(testing_directory(), "") &&
        !is.null(self$file) &&
        !is.null(self$test)
    },
    has_snapshot = function(i) {
      if (!has_name(self$old_snaps, self$test)) {
        return(FALSE)
      }
      length(self$old_snaps[self$test] >= i)
    },

    # File management ----------------------------------------------------------
    snaps_read = function(suffix = "") {
      if (file.exists(self$snap_path(suffix))) {
        yaml::read_yaml(self$snap_path(suffix))
      } else {
        list()
      }
    },
    snaps_write = function(yaml, suffix = "") {
      yaml <- compact(yaml)
      if (length(yaml) == 0) {
        yaml::write_yaml(yaml, self$snap_path(suffix))
      } else {
        self$snaps_delete(suffix)
      }
    },
    snaps_delete = function(suffix = "") {
      unlink(self$snap_path(suffix))
    },
    snap_path = function(suffix = "") {
      file.path("snaps", paste0(self$file, suffix, ".yaml"))
    }
  )
)

# set/get active snapshot reporter ----------------------------------------

get_snapshotter <- function() {
  x <- getOption("testthat.snapshotter")
  if (is.null(x)) {
    return()
  }

  if (!x$is_active()) {
    return()
  }

  x
}

local_snapshotter <- function(.env = parent.frame()) {
  reporter <- SnapshotReporter$new()
  withr::local_options(
    list("testthat.snapshotter" = reporter),
    .local_envir = .env
  )
  reporter
}
