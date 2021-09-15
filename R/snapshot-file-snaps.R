# Manage a test files worth of snapshots - if the test file uses variants, this
# will correspond to multiple output files.
FileSnaps <- R6::R6Class("FileSnaps", public = list(
  snap_path = NULL,
  file = NULL,
  type = NULL,
  snaps = NULL,

  initialize = function(snap_path, file, type = c("old", "cur", "new")) {
    self$snap_path <- snap_path
    self$file <- file
    self$type <- arg_match(type)

    if (self$type == "old") {
      # Find variants
      variants <- c("_default", dirs(self$snap_path))
      paths <- set_names(self$path(variants), variants)
      paths <- paths[file.exists(paths)]

      self$snaps <- lapply(paths, read_snaps)
    } else {
      self$snaps <- list(`_default` = list())
    }
  },

  get = function(test, variant, i) {
    test_snaps <- self$snaps[[variant]][[test]]
    if (i > length(test_snaps)) {
      NULL
    } else {
      test_snaps[[i]]
    }
  },

  append = function(test, variant, data) {
    if (!has_name(self$snaps, variant)) {
      # Needed for R < 3.6
      self$snaps[[variant]] <- list()
    }

    self$snaps[[variant]][[test]] <- c(self$snaps[[variant]][[test]], data)
    length(self$snaps[[variant]][[test]])
  },

  reset = function(test, old) {
    for (variant in names(self$snaps)) {
      cur_test <- self$snaps[[variant]][[test]]
      old_test <- old$snaps[[variant]][[test]]

      if (length(cur_test) == 0) {
        self$snaps[[variant]][[test]] <- old_test
      } else if (length(old_test) > length(cur_test)) {
        self$snaps[[variant]][[test]] <- c(cur_test, old_test[-seq_along(cur_test)])
      }
    }
    invisible()
  },

  write = function() {
    for (variant in names(self$snaps)) {
      default <- variant == "_default"
      if (!default) {
        dir.create(file.path(self$snap_path, variant), showWarnings = FALSE)
      }

      write_snaps(
        self$snaps[[variant]],
        self$path(variant),
        delete = default
      )
    }
    invisible()
  },

  delete = function() {
    unlink(self$path())
    invisible()
  },

  filename = function() {
    paste0(self$file, if (self$type == "new") ".new", ".md")
  },

  path = function(variant = "_default") {
    ifelse(variant == "_default",
      file.path(self$snap_path, self$filename()),
      file.path(self$snap_path, variant, self$filename())
    )
  }
))

dirs <- function(path) {
  list.dirs(path, recursive = FALSE, full.names = FALSE)
}
