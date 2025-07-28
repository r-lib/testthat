SnapshotReporter <- R6::R6Class(
  "SnapshotReporter",
  inherit = Reporter,
  public = list(
    snap_dir = character(),
    file = NULL,
    test = NULL,
    test_file_seen = character(),
    snap_file_seen = character(),
    variants_changed = FALSE,
    fail_on_new = FALSE,

    old_snaps = NULL,
    cur_snaps = NULL,
    new_snaps = NULL,

    initialize = function(snap_dir = "_snaps", fail_on_new = FALSE) {
      self$snap_dir <- normalizePath(snap_dir, mustWork = FALSE)
      self$fail_on_new <- fail_on_new
    },

    start_file = function(path, test = NULL) {
      self$file <- context_name(path)
      self$test_file_seen <- c(self$test_file_seen, self$file)

      self$variants_changed <- character()

      self$old_snaps <- FileSnaps$new(self$snap_dir, self$file, type = "old")
      self$cur_snaps <- FileSnaps$new(self$snap_dir, self$file, type = "cur")
      self$new_snaps <- FileSnaps$new(self$snap_dir, self$file, type = "new")

      if (!is.null(test)) {
        self$start_test(NULL, test)
      }
    },

    start_test = function(context, test) {
      if (is.character(test)) {
        self$test <- gsub("\n", "", test)
      }
    },

    # Called by expectation
    take_snapshot = function(
      value,
      save = identity,
      load = identity,
      ...,
      tolerance = testthat_tolerance(),
      variant = NULL,
      trace_env = NULL
    ) {
      check_string(self$test, allow_empty = FALSE)
      i <- self$new_snaps$append(self$test, variant, save(value))

      old_raw <- self$old_snaps$get(self$test, variant, i)
      if (!is.null(old_raw)) {
        self$cur_snaps$append(self$test, variant, old_raw)
        old <- load(old_raw)

        comp <- waldo_compare(
          x = old,
          x_arg = "old",
          y = value,
          y_arg = "new",
          ...,
          tolerance = tolerance,
          quote_strings = FALSE
        )

        if (length(comp) > 0L) {
          self$variants_changed <- union(self$variants_changed, variant)
        } else {
          # Use the old value for the new snapshot so the snapshot remains
          # unchanged if the values compare as equal
          self$new_snaps$set(self$test, variant, i, old_raw)
        }
        comp
      } else {
        value_enc <- save(value)

        self$cur_snaps$append(self$test, variant, value_enc)

        message <- paste0(
          "Adding new snapshot",
          if (variant != "_default") paste0(" for variant '", variant, "'"),
          if (self$fail_on_new) " in CI",
          ":\n",
          value_enc
        )
        if (self$fail_on_new) {
          fail(message, trace_env = trace_env)
        } else {
          testthat_warn(message)
        }
        character()
      }
    },

    take_file_snapshot = function(
      name,
      path,
      file_equal,
      variant = NULL,
      trace_env = NULL
    ) {
      self$announce_file_snapshot(name)

      if (is.null(variant)) {
        snap_dir <- file.path(self$snap_dir, self$file)
      } else {
        snap_dir <- file.path(self$snap_dir, variant, self$file)
      }
      snapshot_file_equal(
        snap_test_dir = snap_dir,
        snap_name = name,
        snap_variant = variant,
        path = path,
        file_equal = file_equal,
        fail_on_new = self$fail_on_new,
        trace_env = trace_env
      )
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

      for (variant in self$new_snaps$variants()) {
        if (variant %in% self$variants_changed) {
          self$new_snaps$write(variant)
        } else {
          self$new_snaps$delete(variant)
        }
      }
    },
    end_reporter = function() {
      # clean up if we've seen all files
      tests <- context_name(find_test_scripts(".", full.names = FALSE))
      if (!on_ci() && all(tests %in% self$test_file_seen)) {
        snapshot_cleanup(
          self$snap_dir,
          test_files_seen = self$test_file_seen,
          snap_files_seen = self$snap_file_seen
        )
      }
    },

    is_active = function() {
      !is.null(self$file) && !is.null(self$test)
    },

    snap_files = function() {
      dir(self$snap_dir, recursive = TRUE)
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

#' Instantiate local snapshotting context
#'
#' Needed if you want to run snapshot tests outside of the usual testthat
#' framework For expert use only.
#'
#' @export
#' @keywords internal
local_snapshotter <- function(
  snap_dir = NULL,
  cleanup = FALSE,
  fail_on_new = FALSE,
  .env = parent.frame()
) {
  snap_dir <- snap_dir %||% withr::local_tempdir(.local_envir = .env)
  reporter <- SnapshotReporter$new(
    snap_dir = snap_dir,
    fail_on_new = fail_on_new
  )
  if (!identical(cleanup, FALSE)) {
    warn("`cleanup` is deprecated")
  }

  withr::local_options(
    "testthat.snapshotter" = reporter,
    .local_envir = .env
  )
  reporter
}
