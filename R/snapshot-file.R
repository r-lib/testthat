#' Snapshot testing for whole files
#'
#' @description
#' Whole file snapshot testing is designed for testing objects that don't have
#' a convenient textual representation, with initial support for images
#' (`.png`, `.jpg`, `.svg`), data frames (`.csv`), and text files
#' (`.R`, `.txt`, `.json`, ...).
#'
#' The first time `expect_snapshot_file()` is run, it will create
#' `_snaps/{test}/{name}.{ext}` containing reference output. Future runs will
#' be compared to this reference: if different, the test will fail and the new
#' results will be saved in `_snaps/{test}/{name}.new.{ext}`. To review
#' failures, call [snapshot_review()].
#'
#' We generally expect this function to be used via a wrapper that takes care
#' of ensuring that output is as reproducible as possible, e.g. automatically
#' skipping tests where it's known that images can't be reproduced exactly.
#'
#' @param path Path to file to snapshot. Optional for
#'   `announce_snapshot_file()` if `name` is supplied.
#' @param name Snapshot name, taken from `path` by default.
#' @param binary `r lifecycle::badge("deprecated")` Please use the
#'   `compare` argument instead.
#' @param compare A function used for comparison taking `old` and
#'   `new` arguments. By default this is `compare_file_binary`. Set it
#'   to `compare_file_text` to compare files line-by-line, ignoring
#'   the difference between Windows and Mac/Linux line endings.
#' @param variant If not-`NULL`, results will be saved in
#'   `_snaps/{variant}/{test}/{name}.{ext}`. This allows you to create
#'   different snapshots for different scenarios, like different operating
#'   systems or different R versions.
#' @inheritParams expect_snapshot
#'
#' @section Announcing snapshots:
#' testthat automatically detects dangling snapshots that have been
#' written to the `_snaps` directory but which no longer have
#' corresponding R code to generate them. These dangling files are
#' automatically deleted so they don't clutter the snapshot
#' directory. However we want to preserve snapshot files when the R
#' code wasn't executed because of an unexpected error or because of a
#' [skip()]. Let testthat know about these files by calling
#' `announce_snapshot_file()` before `expect_snapshot_file()`.
#'
#' @export
#' @examples
#'
#' # To use expect_snapshot_file() you'll typically need to start by writing
#' # a helper function that creates a file from your code, returning a path
#' save_png <- function(code, width = 400, height = 400) {
#'   path <- tempfile(fileext = ".png")
#'   png(path, width = width, height = height)
#'   on.exit(dev.off())
#'   code
#'
#'   path
#' }
#' path <- save_png(plot(1:5))
#' path
#'
#' \dontrun{
#' expect_snapshot_file(save_png(hist(mtcars$mpg)), "plot.png")
#' }
#'
#' # You'd then also provide a helper that skips tests where you can't
#' # be sure of producing exactly the same output
#' expect_snapshot_plot <- function(name, code) {
#'   # Other packages might affect results
#'   skip_if_not_installed("ggplot2", "2.0.0")
#'   # Or maybe the output is different on some operation systems
#'   skip_on_os("windows")
#'   # You'll need to carefully think about and experiment with these skips
#'
#'   name <- paste0(name, ".png")
#'
#'   # Announce the file before touching `code`. This way, if `code`
#'   # unexpectedly fails or skips, testthat will not auto-delete the
#'   # corresponding snapshot file.
#'   announce_snapshot_file(name = name)
#'
#'   path <- save_png(code)
#'   expect_snapshot_file(path, name)
#' }
expect_snapshot_file <- function(path,
                                 name = basename(path),
                                 binary = lifecycle::deprecated(),
                                 cran = FALSE,
                                 compare =  compare_file_binary,
                                 variant = NULL) {
  edition_require(3, "expect_snapshot_file()")
  if (!cran && !interactive() && on_cran()) {
    skip("On CRAN")
  }

  check_variant(variant)

  snapshotter <- get_snapshotter()
  if (is.null(snapshotter)) {
    snapshot_not_available(paste0("New path: ", path))
    return(invisible())
  }

  if (!is_missing(binary)) {
    lifecycle::deprecate_soft(
      "3.0.3",
      "expect_snapshot_file(binary = )",
      "expect_snapshot_file(compare = )"
    )
    compare <- if (binary) compare_file_binary else compare_file_text
  }

  lab <- quo_label(enquo(path))
  equal <- snapshotter$take_file_snapshot(name, path, compare, variant = variant)
  hint <- snapshot_hint(snapshotter$file, name)

  expect(
    equal,
    sprintf(
      "Snapshot of %s to '%s' has changed\n%s",
      lab, paste0(snapshotter$file, "/", name),
      hint
    )
  )
}

#' @rdname expect_snapshot_file
#' @export
announce_snapshot_file <- function(path, name = basename(path)) {
  edition_require(3, "announce_snapshot_file()")

  snapshotter <- get_snapshotter()
  if (!is.null(snapshotter)) {
    snapshotter$announce_file_snapshot(name)
  }
}

snapshot_hint <- function(test, name, ci = on_ci(), check = in_rcmd_check()) {
  path <- paste0("tests/testthat/_snaps/", test, "/", new_name(name))

  paste0(
    if (check && ci) "* Download and unzip run artifact\n",
    if (check && !ci) "* Locate check directory\n",
    if (check) paste0("* Copy '", path, "' to local test directory\n"),
    if (check) "* ",
    paste0("Run `testthat::snapshot_review('", test, "')` to review changes")
  )
}

snapshot_file_equal <- function(snap_test_dir, snap_name, path, file_equal = compare_file_binary) {
  cur_path <- file.path(snap_test_dir, snap_name)
  new_path <- new_name(cur_path)

  if (file.exists(cur_path)) {
    eq <- file_equal(cur_path, path)
    if (!eq) {
      file.copy(path, new_path, overwrite = TRUE)
    } else {
      # in case it exists from a previous run
      unlink(new_path)
    }
    eq
  } else {
    dir.create(snap_test_dir, showWarnings = FALSE, recursive = TRUE)
    file.copy(path, cur_path)
    testthat_warn(paste0("Adding new file snapshot: '", cur_path, "'"))
    TRUE
  }
}

# Helpers -----------------------------------------------------------------

new_name <- function(x) {
  pieces <- split_path(x)
  paste0(
    pieces$dir, ifelse(pieces$dir == "", "", "/"),
    pieces$name, ".new.", pieces$ext
  )
}

split_path <- function(path) {
  dir <- dirname(path)
  dir[dir == "."] <- ""
  name <- basename(path)

  ext_loc <- regexpr(".", name, fixed = TRUE)
  no_ext <- ext_loc == -1L

  name_sans_ext <- ifelse(no_ext, name, substr(name, 1, ext_loc - 1))
  ext <- ifelse(no_ext, "", substr(name, ext_loc + 1, nchar(name)))

  list(
    dir = dir,
    name = name_sans_ext,
    ext = ext
  )
}

write_tmp_lines <- function(lines, ext = ".txt", eol = "\n") {
  path <- tempfile(fileext = ext)
  brio::write_lines(lines, path, eol = eol)
  path
}

local_snap_dir <- function(paths, .env = parent.frame()) {
  dir <- tempfile()
  withr::defer(unlink(paths), envir = .env)

  dirs <- file.path(dir, unique(dirname(paths)))
  for (d in dirs) {
    dir.create(d, showWarnings = FALSE, recursive = TRUE)
  }
  file.create(file.path(dir, paths))

  dir
}

#' @rdname expect_snapshot_file
#' @param old,new Paths to old and new snapshot files.
#' @export
compare_file_binary <- function(old, new) {
  old <- brio::read_file_raw(old)
  new <- brio::read_file_raw(new)
  identical(old, new)
}
#' @rdname expect_snapshot_file
#' @export
compare_file_text <- function(old, new) {
  old <- brio::read_lines(old)
  new <- brio::read_lines(new)
  identical(old, new)
}
