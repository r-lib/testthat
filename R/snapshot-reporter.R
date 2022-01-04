
SnapshotReporter <- R6::R6Class("SnapshotReporter",
  inherit = Reporter,
  public = list(
    snap_dir = character(),
    file = NULL,
    test = NULL,
    test_file_seen = character(),
    snap_file_seen = character(),
    file_changed = FALSE,

    old_snaps = NULL,
    cur_snaps = NULL,
    new_snaps = NULL,

    initialize = function(snap_dir = "_snaps") {
      self$snap_dir <- snap_dir
    },

    start_file = function(path, test = NULL) {
      self$file <- context_name(path)
      self$test_file_seen <- c(self$test_file_seen, self$file)

      self$file_changed <- FALSE

      self$old_snaps <- FileSnaps$new(self$snap_dir, self$file, type = "old")
      self$cur_snaps <- FileSnaps$new(self$snap_dir, self$file, type = "cur")
      self$new_snaps <- FileSnaps$new(self$snap_dir, self$file, type = "new")

      if (!is.null(test)) {
        self$start_test(NULL, test)
      }
    },

    start_test = function(context, test) {
      self$test <- test
    },

    # Called by expectation
    take_snapshot = function(value,
                             save = identity,
                             load = identity,
                             ...,
                             tolerance = testthat_tolerance(),
                             variant = NULL) {
      i <- self$new_snaps$append(self$test, variant, save(value))

      old_raw <- self$old_snaps$get(self$test, variant, i)
      if (!is.null(old_raw)) {
        self$cur_snaps$append(self$test, variant, old_raw)
        old <- load(old_raw)

        comp <- waldo_compare(
          x = old,   x_arg = "old",
          y = value, y_arg = "new",
          ...,
          tolerance = tolerance
        )

        if (length(comp) > 0L) {
          self$file_changed <- TRUE
        }
        comp
      } else {
        value_enc <- save(value)
        check_roundtrip(value, load(value_enc), ..., tolerance = tolerance)

        self$cur_snaps$append(self$test, variant, value_enc)
        testthat_warn(paste0(
          "Adding new snapshot",
          if (variant != "_default") paste0(" to variant '", variant, "'"),
          ":\n",
          value_enc
        ))
        character()
      }
    },

    take_file_snapshot = function(name, path, file_equal, variant = NULL) {
      self$announce_file_snapshot(name)

      if (is.null(variant)) {
        snap_dir <- file.path(self$snap_dir, self$file)
      } else {
        snap_dir <- file.path(self$snap_dir, variant, self$file)
      }
      snapshot_file_equal(snap_dir, name, path, file_equal)
    },
    # Also called from announce_snapshot_file()
    announce_file_snapshot = function(name) {
      self$snap_file_seen <- c(self$snap_file_seen, file.path(self$file, name))
    },

    add_result = function(context, test, result) {
      if (is.null(self$test)) {
        return()
      }

      # If expectation errors or skips, need to reset remaining snapshots
      if (expectation_error(result) || expectation_skip(result)) {
        self$cur_snaps$reset(self$test, self$old_snaps)
      }
    },

    end_file = function() {
      dir.create(self$snap_dir, showWarnings = FALSE)

      self$cur_snaps$write()
      if (self$file_changed) {
        self$new_snaps$write()
      } else {
        self$new_snaps$delete()
      }
    },
    end_reporter = function() {
      # clean up if we've seen all files
      tests <- context_name(find_test_scripts(".", full.names = FALSE))
      if (all(tests %in% self$test_file_seen)) {
        snapshot_cleanup(self$snap_dir,
          test_files_seen = self$test_file_seen,
          snap_files_seen = self$snap_file_seen
        )
      }
    },

    is_active = function() {
      !is.null(self$file) && !is.null(self$test)
    }
  )
)


check_roundtrip <- function(x, y, ..., tolerance = testthat_tolerance()) {
  check <- waldo_compare(x, y, x_arg = "value", y_arg = "roundtrip", ..., tolerance = tolerance)
  if (length(check) > 0) {
    abort(c(
      paste0("Serialization round-trip is not symmetric.\n\n", check, "\n"),
      i = "You may need to consider serialization `style`")
    )
  }
}

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

#' Instantiate local snapshotting context
#'
#' Needed if you want to run snapshot tests outside of the usual testthat
#' framework For expert use only.
#'
#' @export
#' @keywords internal
local_snapshotter <- function(snap_dir = NULL, cleanup = FALSE, .env = parent.frame()) {
  snap_dir <- snap_dir %||% withr::local_tempdir(.local_envir = .env)
  reporter <- SnapshotReporter$new(snap_dir = snap_dir)
  if (!identical(cleanup, FALSE)) {
    warn("`cleanup` is deprecated")
  }

  withr::local_options(
    "testthat.snapshotter" = reporter,
    .local_envir = .env
  )
  reporter
}
