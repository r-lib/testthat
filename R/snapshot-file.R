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
