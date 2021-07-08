
SnapshotReporter <- R6::R6Class("SnapshotReporter",
  inherit = Reporter,
  public = list(
    snap_dir = character(),
    file = NULL,
    test = NULL,
    test_file_seen = character(),
    snap_file_seen = new_environment(),
    i = 0,
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
      self$old_snaps <- self$snaps_read()
      self$cur_snaps <- list()
      self$new_snaps <- list()

      if (!is.null(test)) {
        self$start_test(NULL, test)
      }
    },
    start_test = function(context, test) {
      self$test <- test
      self$i <- 0L

      if (length(self$cur_snaps[[test]]) > 0) {
        testthat_warn("Duplicate test, discarding previous snapshot")
      }
      self$cur_snaps[[test]] <- list()
      self$new_snaps[[test]] <- list()
    },

    # Called by expectation
    take_snapshot = function(value, save = identity, load = identity, ..., tolerance = testthat_tolerance()) {
      self$i <- self$i + 1L

      self$new_snaps <- self$snap_append(self$new_snaps, save(value))

      if (self$has_snapshot(self$i)) {
        old_raw <- self$old_snaps[[self$test]][[self$i]]
        self$cur_snaps <- self$snap_append(self$cur_snaps, old_raw)

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

        self$cur_snaps <- self$snap_append(self$cur_snaps, save(value))
        testthat_warn(paste0("Adding new snapshot:\n", save(value)))
        character()
      }
    },

    announce_file_snapshot = function(name) {
      self$snap_file_seen[[file.path(self$file, name)]] <- TRUE
    },

    take_file_snapshot = function(name, path, file_equal) {
      self$announce_file_snapshot(name)

      snap_dir <- file.path(self$snap_dir, self$file)
      snapshot_file_equal(snap_dir, name, path, file_equal)
    },

    add_result = function(context, test, result) {
      if (is.null(self$test)) {
        return()
      }

      # If expectation errors or skips reset all snapshots
      if (expectation_error(result) || expectation_skip(result)) {
        self$cur_snaps[[self$test]] <- self$old_snaps[[self$test]]

        if (self$i > 0) {
          testthat_warn("Snapshots reset after error/skip")
        }
      }
    },

    end_file = function() {
      dir.create(self$snap_dir, showWarnings = FALSE)

      self$snaps_write(self$cur_snaps)
      if (self$file_changed) {
        self$snaps_write(self$new_snaps, ".new")
      } else {
        self$snaps_delete(".new")
      }
    },
    end_reporter = function() {
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
    has_snapshot = function(i) {
      if (!has_name(self$old_snaps, self$test)) {
        return(FALSE)
      }
      i <= length(self$old_snaps[[self$test]])
    },

    snap_append = function(data, snap) {
      data[[self$test]] <- c(data[[self$test]], list(snap))
      data
    },

    # File management ----------------------------------------------------------
    snaps_read = function(suffix = "") {
      if (file.exists(self$snap_path(suffix))) {
        lines <- read_lines(self$snap_path(suffix))
        snap_from_md(lines)
      } else {
        list()
      }
    },
    snaps_write = function(data, suffix = "") {
      data <- compact(data)
      if (length(data) > 0) {
        out <- snap_to_md(data)
        # trim off last line since write_lines() adds one
        out <- gsub("\n$", "", out)
        write_lines(out, self$snap_path(suffix))
      } else {
        self$snaps_delete(suffix)
      }
    },
    snaps_delete = function(suffix = "") {
      unlink(self$snap_path(suffix))
    },
    snaps_cleanup = function() {
      self$snaps_delete()
      self$snaps_delete(".new")
    },
    snap_path = function(suffix = "") {
      file.path("_snaps", paste0(self$file, suffix, ".md"))
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
