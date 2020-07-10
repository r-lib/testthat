expect_snapshot_output <- function(x) {
  lab <- quo_label(enquo(x))
  val <- capture_output_lines(snapshot_print(x))

  expect_snapshot(lab, val)
}

#' @param exact Use [serialize()] to produce a more exact serialisation
#'   of `x`. The major downside is that this produces output that is not
#'   human readable, making it difficult to review what's changed in pull
#'   requests.
expect_snapshot_value <- function(x, exact = FALSE) {
  lab <- quo_label(enquo(x))

  if (exact) {
    save <- function(x) rawToChar(serialize(x, NULL, ascii = TRUE))
    load <- function(x) unserialize(charToRaw(x))
  } else {
    save <- identity
    load <- identity
  }

  expect_snapshot(lab, x, save = save, load = load)
}

expect_snapshot_condition <- function(x, class = "error") {
  lab <- quo_label(enquo(x))
  val <- capture_matching_condition(x, cnd_matcher(class))
  if (is.null(val)) {
    fail(sprintf("%s did not throw %s condition", lab, class))
  }

  expect_snapshot(lab, val)
}

expect_snapshot <- function(lab, val, save = identity, load = identity) {
  snapshotter <- get_snapshotter()
  if (is.null(snapshotter)) {
    cat("No snapshotter active. Current value: \n")
    cat(val, sep = "\n")
  } else {
    comp <- snapshotter$take_snapshot(val, save = save, load = load)
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


snapshot_accept <- function(path = "tests/testthat") {
  changed <- dir(file.path(path, "snaps"), pattern = "\\.new\\.json$", full.names = TRUE)

  cur <- gsub("\\.new\\.json$", "\\.json", changed)
  unlink(cur)
  file.rename(changed, cur)

  invisible()
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
    take_snapshot = function(value, save = identity, load = identity) {
      self$i <- self$i + 1L

      self$new_snaps <- self$snap_append(self$new_snaps, save(value))

      if (self$has_snapshot(self$i)) {
        old <- load(self$old_snaps[[self$test]][[self$i]])
        self$cur_snaps <- self$snap_append(self$cur_snaps, save(old))

        comp <- waldo::compare(
          x = old,   x_arg = "previous",
          y = value, y_arg = "current"
        )

        if (length(comp) > 0L) {
          self$file_changed <- TRUE
        }
        comp
      } else {
        roundtrip <- load(save(value))
        check_roundtrip(value, roundtrip)

        self$cur_snaps <- self$snap_append(self$cur_snaps, save(value))
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

check_roundtrip <- function(x, y) {
  check <- waldo::compare(x, y, x_arg = "value", y_arg = "roundtrip")
  if (length(check) > 0) {
    warn(c(
      "Serialization round-trip is not symmetric.",
      "You may need to consider another object",
      check)
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

local_snapshotter <- function(.env = parent.frame()) {
  reporter <- SnapshotReporter$new()
  withr::local_options(
    list("testthat.snapshotter" = reporter),
    .local_envir = .env
  )
  reporter
}
