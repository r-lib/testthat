SnapshotReporter <- R6::R6Class(
  "SnapshotReporter",
  inherit = Reporter,
  public = list(
    snap_dir = character(),
    file = NULL,
    test = NULL,
    test_file_seen = character(),
    snap_file_seen = character(),
    snap_file_saved = character(),
    variants_changed = FALSE,
    fail_on_new = NULL,
    desc = NULL,

    old_snaps = NULL,
    cur_snaps = NULL,
    new_snaps = NULL,

    initialize = function(
      snap_dir = "_snaps",
      fail_on_new = NULL,
      desc = NULL
    ) {
      self$snap_dir <- normalizePath(snap_dir, mustWork = FALSE)
      self$fail_on_new <- fail_on_new
      self$desc <- desc
    },

    start_file = function(path, test = NULL) {
      self$file <- context_name(path)
      self$test_file_seen <- c(self$test_file_seen, self$file)
      self$snap_file_saved <- character()

      self$variants_changed <- character()

      self$old_snaps <- FileSnaps$new(self$snap_dir, self$file, type = "old")
      self$cur_snaps <- FileSnaps$new(self$snap_dir, self$file, type = "cur")
      self$new_snaps <- FileSnaps$new(self$snap_dir, self$file, type = "new")

      if (!is.null(self$desc)) {
        # When filtering tests, we need to copy over all of the old snapshots,
        # apart from the one that matches the test
        snaps <- self$old_snaps$snaps
        test_name <- test_description(self$desc)
        for (variant in names(snaps)) {
          # In the case of subtests, snaps are named a / b / c1, a / b / c2 etc.
          # So if we run a / b, we want to remove a / b, a / b / c, a / b / c2
          # Subtests that use / in their names are not currently supported.
          matches <- startsWith(names(snaps[[variant]]), test_name)
          # Can't just remove because we want to preserve order
          snaps[[variant]][matches] <- rep(list(NULL), sum(matches))
        }
        self$cur_snaps$snaps <- snaps
      }

      if (!is.null(test)) {
        self$start_test(NULL, test)
      }
    },

    start_test = function(context, test) {
      if (is.null(test)) {
        return()
      }

      self$test <- gsub("\n", "", test)
    },

    # Called by expectation
    take_snapshot = function(
      value,
      save = identity,
      load = identity,
      ...,
      tolerance = testthat_tolerance(),
      variant = NULL,
      trace_env = caller_env()
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
        fail_on_new <- self$fail_on_new %||% on_ci()

        message <- paste0(
          "Adding new snapshot",
          if (variant != "_default") paste0(" for variant '", variant, "'"),
          ":\n",
          value_enc
        )
        if (fail_on_new) {
          fail(message, trace_env = trace_env)
          return()
        }
        testthat_warn(message)
        character()
      }
    },

    take_file_snapshot = function(
      name,
      path,
      file_equal,
      variant = NULL,
      trace_env = caller_env()
    ) {
      self$announce_file_snapshot(name)

      save_path <- paste0(c(self$file, variant, name), collapse = "/")
      if (save_path %in% self$snap_file_saved) {
        cli::cli_abort(
          "Snapshot file names must be unique. {.val {name}} has already been used.",
          call = trace_env
        )
      }
      self$snap_file_saved <- c(self$snap_file_saved, save_path)

      snapshot_file_equal(
        snap_dir = self$snap_dir,
        snap_test = self$file,
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

      # If expectation errors or skips, need to copy snapshots from old to cur
      # TODO: the logic is not correct here for subtests, probably because
      # the code was not written under the assumption that start_test()
      # generates a stack of tests. You can see the problem by running
      # local_on_cran() then testing describe.R.
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
  reporter = SnapshotReporter,
  snap_dir = "_snaps",
  cleanup = FALSE,
  desc = NULL,
  fail_on_new = NULL,
  frame = caller_env()
) {
  reporter <- reporter$new(
    snap_dir = snap_dir,
    fail_on_new = fail_on_new,
    desc = desc
  )
  withr::local_options("testthat.snapshotter" = reporter, .local_envir = frame)

  reporter
}

local_test_snapshotter <- function(
  snap_dir = NULL,
  desc = NULL,
  frame = caller_env()
) {
  snap_dir <- snap_dir %||% withr::local_tempdir(.local_envir = frame)
  local_snapshotter(
    snap_dir = snap_dir,
    desc = desc,
    fail_on_new = FALSE,
    frame = frame
  )
}
