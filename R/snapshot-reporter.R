
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

    start_file = function(path, test = NULL) {
      self$file <- context_name(path)
      self$file_seen <- c(self$file_seen, path)

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

      self$cur_snaps[[test]] <- list()
      self$new_snaps[[test]] <- list()
    },

    # Called by expectation
    take_snapshot = function(value, save = identity, load = identity) {
      self$i <- self$i + 1L

      self$new_snaps <- self$snap_append(self$new_snaps, save(value))

      if (self$has_snapshot(self$i)) {
        old_raw <- self$old_snaps[[self$test]][[self$i]]
        self$cur_snaps <- self$snap_append(self$cur_snaps, old_raw)

        old <- load(old_raw)

        comp <- waldo_compare(
          x = value, x_arg = "current",
          y = old,   y_arg = "previous"
        )

        if (length(comp) > 0L) {
          self$file_changed <- TRUE
        }
        comp
      } else {
        check_roundtrip(value, load(save(value)))

        self$cur_snaps <- self$snap_append(self$cur_snaps, save(value))
        testthat_warn(paste0("Adding new snapshot:\n", save(value)))
        character()
      }
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
      dir.create("_snaps", showWarnings = FALSE)

      self$snaps_write(self$cur_snaps)
      if (self$file_changed) {
        self$snaps_write(self$new_snaps, ".new")
      } else {
        self$snaps_delete(".new")
      }
    },
    end_reporter = function() {
      # check we've seen all files before cleaning up
      tests <- find_test_scripts(".", full.names = FALSE)
      if (!all(tests %in% self$file_seen)) {
        rstudio_tickle()
        return()
      }

      snaps <- dir("_snaps", full.names = TRUE)
      snaps <- snaps[!grepl(".new.", snaps, fixed = TRUE)]
      snap_name <- tools::file_path_sans_ext(basename(snaps))
      outdated <- !snap_name %in% context_name(tests)
      unlink(snaps[outdated])

      if (length(dir("_snaps") == 0)) {
        unlink("_snaps")
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

check_roundtrip <- function(x, y) {
  check <- waldo_compare(x, y, x_arg = "value", y_arg = "roundtrip")
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
#' framework. For expert use only.
#'
#' @export
#' @keywords internal
local_snapshotter <- function(cleanup = FALSE, .env = parent.frame()) {
  reporter <- SnapshotReporter$new()
  if (cleanup) {
    withr::defer(reporter$snaps_cleanup(), envir = .env)
  }

  withr::local_options(
    list("testthat.snapshotter" = reporter),
    .local_envir = .env
  )
  reporter
}
