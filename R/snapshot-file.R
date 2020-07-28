#' Snapshot testing for a complete file
#'
#' @description
#' Whole file snapshot testing is primarily designed for testing images.
#' The first time it is run `expect_snapshot_file()` will create
#' `_snaps/{test}/{name}.{ext}` containing reference output. Future runs will be
#' compared to this reference: if different, the test will fail and the new
#' results will be saved in `_snaps/{test}/{name}.new.{ext}`.
#'
#' We generally expect this function to be used via a wrapper that takes care
#' of ensuring the images are as reproducible as possible, automatically
#' skipping tests where it's known that the images can't be reproduced exactly
#' (without extreme efforts it is generally impossible to generate pixel
#' perfect images across platforms).
#'
#' @param path Path to file to snapshot.
#' @param name Snapshot name, taken from `path` by default.
#' @param binary If `FALSE`, files are compared line-by-line, ignoring the
#'   difference between Windows and Mac/Linux line endings.
#' @inheritParams expect_snapshot
#' @export
expect_snapshot_file <- function(path, name = basename(path), binary = TRUE, cran = FALSE) {
  edition_require(3, "expect_snapshot_file()")
  if (cran && !interactive() && on_cran()) {
    skip("On CRAN")
  }

  snapshotter <- get_snapshotter()
  if (is.null(snapshotter)) {
    cat("No snapshotter active. New path: ", path, "\n", sep = "")
    return()
  }
  compare <- if (binary) compare_file_binary else compare_file_text

  lab <- quo_label(enquo(path))
  equal <- snapshotter$take_file_snapshot(name, path, compare)
  hint <- paste0("Run `snapshot_review('", snapshotter$file, "')` to review changes")

  expect(
    equal,
    sprintf(
      "Shapshot of %s (%s) has changed\n%s",
      lab, paste0(snapshotter$file, "/", name),
      hint
    )
  )
}

compare_file_binary <- function(old, new) {
  old <- brio::read_file_raw(old)
  new <- brio::read_file_raw(new)
  identical(old, new)
}

compare_file_text <- function(old, new) {
  old <- brio::read_lines(old)
  new <- brio::read_lines(new)
  identical(old, new)
}

snapshot_file <- function(test_path, path, file_equal) {
  ext <- tools::file_ext(name)
  slug <- tools::file_path_sans_ext(basename(name))

  cur_path <- file.path(test_path, name)
  new_path <- file.path(test_path, paste0(slug, ".new.", ext))

  if (file.exists(cur_path)) {
    eq <- file_equal(cur_path, path)
    if (!eq) {
      file.copy(path, new_path)
    } else {
      # in case it exists from a previous run
      unlink(new_path)
    }
    eq
  } else {
    dir.create(test_path, showWarnings = FALSE, recursive = TRUE)
    file.copy(path, cur_path)
    testthat_warn(paste0("Adding new file snapshot: '", cur_path, "'"))
    TRUE
  }
}
