expect_snapshot_output <- function(x) {
  lab <- quo_label(enquo(x))
  val <- capture_output_lines(snapshot_print(x))

  expect_snapshot(lab, val)
}

expect_snapshot_value <- function(x, serialize = FALSE) {
  lab <- quo_label(enquo(x))
  if (serialize) {
    val <- rawToChar(serialize(x, NULL, ascii = TRUE))
  } else {
    val <- x
  }

  expect_snapshot(lab, val)
}

expect_snapshot <- function(lab, val) {
  snapshotter <- get_snapshotter()
  if (is.null(snapshotter)) {
    cat("No snapshotter active. Current value: \n")
    cat(val, sep = "\n")
  } else {
    comp <- snapshotter$take_snapshot(val)
    expect(
      length(comp) == 0,
      sprintf(
        "Shapshot of %s has changed:\n%s\n\n%s",
        lab,
        paste0(comp, collapse = "\n\n"),
        "Run `snapshot_accept()` if this is a deliberate change"
      )
    )
  }
}

#' @export
#' @rdname expect_snapshot_output
snapshot_print <- function(x) {
  UseMethod("snapshot_print")
}

#' @export
snapshot_print.default <- function(x) {
  print(x)
}

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
      self$file <- context_name(path)
      self$file_seen <- c(self$file_seen, path)

      self$file_changed <- FALSE
      self$old_snaps <- self$snaps_read()
      self$cur_snaps <- list()
      self$new_snaps <- list()
    },
    start_test = function(context, test) {
      self$test <- test
      self$i <- 0L

      self$cur_snaps[[test]] <- list()
      self$new_snaps[[test]] <- list()
    },

    # Called by expectation
    take_snapshot = function(value) {
      self$i <- self$i + 1L

      self$new_snaps <- self$snap_append(self$new_snaps, value)

      if (self$has_snapshot(self$i)) {
        old <- self$old_snaps[[self$test]][[self$i]]
        self$cur_snaps <- self$snap_append(self$cur_snaps, old)

        comp <- waldo::compare(
          x = old,   x_arg = "previous",
          y = value, y_arg = "current"
        )

        if (length(comp) > 0L) {
          self$file_changed <- TRUE
        }
        comp
      } else {
        self$cur_snaps <- self$snap_append(self$cur_snaps, value)

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

    is_active = function() {
      !identical(testing_directory(), "") &&
        !is.null(self$file) &&
        !is.null(self$test)
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
        yaml::read_yaml(self$snap_path(suffix))
      } else {
        list()
      }
    },
    snaps_write = function(data, suffix = "") {
      data <- compact(data)
      if (length(data) > 0) {
        jsonlite::write_json(data, self$snap_path(suffix), pretty = TRUE)
      } else {
        self$snaps_delete(suffix)
      }
    },
    snaps_delete = function(suffix = "") {
      unlink(self$snap_path(suffix))
    },
    snap_path = function(suffix = "") {
      file.path("snaps", paste0(self$file, suffix, ".json"))
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
