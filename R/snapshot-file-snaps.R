# Manage a test files worth of snapshots - once variants are implemented
# this may correspond to more than one snapshot file.
FileSnaps <- R6::R6Class("FileSnaps", public = list(
  snap_path = NULL,
  file = NULL,
  type = NULL,
  snaps = NULL,

  initialize = function(snap_path, file, type = c("old", "cur", "new")) {
    self$snap_path <- snap_path
    self$file <- file
    self$type <- arg_match(type)

    if (self$type == "old" && file.exists(self$path())) {
      lines <- read_lines(self$path())
      self$snaps <- snap_from_md(lines)
    } else {
      self$snaps <- list()
    }
  },

  get = function(test, variant, i) {
    test_snaps <- self$snaps[[test]]
    if (i > length(test_snaps)) {
      NULL
    } else {
      test_snaps[[i]]
    }
  },

  append = function(test, variant, data) {
    self$snaps[[test]] <- c(self$snaps[[test]], data)
    length(self$snaps[[test]])
  },

  reset = function(test, old) {
    cur_test <- self$snaps[[test]]
    old_test <- old$snaps[[test]]
    if (length(old_test) > length(cur_test)) {
      self$snaps[[test]] <- c(cur_test, old_test[-seq_along(cur_test)])
    }
  },

  write = function() {
    snaps <- compact(self$snaps)
    if (length(snaps) > 0) {
      out <- snap_to_md(snaps)
      # trim off last line since write_lines() adds one
      out <- gsub("\n$", "", out)
      write_lines(out, self$path())
    } else {
      self$delete()
    }
  },

  delete = function() {
    unlink(self$path())
  },

  path = function() {
    name <- paste0(self$file, if (self$type == "new") ".new", ".md")
    file.path(self$snap_path, name)
  }
))
