
SnapshotReporter <- R6::R6Class("SnapshotReporter",
  inherit = Reporter,
  public = list(
    snap_dir = character(),
    file = NULL,
    test = NULL,
    test_file_seen = character(),
    snap_file_seen = new_environment(),
    file_changed = FALSE,

    old_snaps = NULL,
    cur_snaps = NULL,
    new_snaps = NULL,

    initialize = function(snap_dir = "_snaps") {
      self$snap_dir <- snap_dir
    },

    start_file = function(path, test = NULL) {
      self$file <- context_name(path)
      self$test_file_seen <- c(self$test_file_seen, path)

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
        check_roundtrip(value, load(save(value)), ..., tolerance = tolerance)

        self$cur_snaps$append(self$test, variant, save(value))
        testthat_warn(paste0("Adding new snapshot:\n", save(value)))
        character()
      }
    },


    take_file_snapshot = function(name, path, file_equal, variant = NULL) {
      self$announce_file_snapshot(name)
      snap_dir <- file.path(self$snap_dir, self$file)
      snapshot_file_equal(snap_dir, name, path, file_equal)
    },
    # Also called from announce_snapshot_file()
    announce_file_snapshot = function(name) {
      self$snap_file_seen[[file.path(self$file, name)]] <- TRUE
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
      # TODO: adjust for variants
      tests <- find_test_scripts(".", full.names = FALSE)
      if (all(tests %in% self$test_file_seen)) {
        # clean up if we've seen all files
        test_names <- context_name(tests)
        outdated <- union(
          snapshot_outdated(self$snap_dir, test_names),
          snapshot_file_outdated(self$snap_dir, test_names, names(self$snap_file_seen))
        )

        if (length(outdated) > 0) {
          inform(c("Deleting unused snapshots:", outdated))
          unlink(outdated, recursive = TRUE)
        }
      }

      if (length(dir(self$snap_dir)) == 0) {
        unlink(self$snap_dir, recursive = TRUE)
      }
      rstudio_tickle()
    },

    is_active = function() {
      !is.null(self$file) && !is.null(self$test)
    },

    snap_append = function(data, snap, variant) {
      variant <- variant %||% "default"
      data[[self$test]][[variant]] <- c(data[[self$test]][[variant]], list(snap))
      data
    },

    # File management ----------------------------------------------------------
    snaps_cleanup = function() {
      self$cur_snaps$delete()
      self$new_snaps$delete()
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

snapshot_outdated <- function(path, tests) {
  snaps <- dir(path, full.names = TRUE)
  snaps <- snaps[!grepl(".new.", snaps, fixed = TRUE)]
  snap_name <- tools::file_path_sans_ext(basename(snaps))
  outdated <- !snap_name %in% tests
  snaps[outdated]
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
local_snapshotter <- function(snap_dir = "_snaps", cleanup = FALSE, .env = parent.frame()) {
  reporter <- SnapshotReporter$new(snap_dir = snap_dir)
  if (cleanup) {
    withr::defer(reporter$snaps_cleanup(), envir = .env)
  }

  withr::local_options(
    "testthat.snapshotter" = reporter,
    .local_envir = .env
  )
  reporter
}
