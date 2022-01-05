snapshot_cleanup <- function(path, test_files_seen = character(), snap_files_seen = character()) {
  outdated <- snapshot_outdated(path, test_files_seen, snap_files_seen)

  if (length(outdated) > 0) {
    inform(c("Deleting unused snapshots:", outdated))
    unlink(file.path(path, outdated), recursive = TRUE)
  }

  # Delete empty directories:
  # nest dir() inside list.dirs() to avoid picking up `.` directories
  dirs <- list.dirs(dir(path, full.names = TRUE))
  empty <- dirs[map_lgl(dirs, is_dir_empty)]
  unlink(empty, recursive = TRUE)

  # Delete snapshot folder
  if (is_dir_empty(path)) { 
    unlink(path, recursive = TRUE) 
  }

  rstudio_tickle()

  invisible(outdated)
}

is_dir_empty <- function(x) {
  length(dir(x, recursive = TRUE)) == 0
}

snapshot_outdated <- function(path, test_files_seen = character(), snap_files_seen = character()) {
  all_files <- dir(path, recursive = TRUE)
  expected <- snapshot_expected(path, test_files_seen, snap_files_seen)
  setdiff(all_files, expected)
}

snapshot_expected <- function(
    snap_dir,
    test_files_seen = character(),
    snap_files_seen = character()) {

  if (length(test_files_seen) > 0) {
    snaps <- c(paste0(test_files_seen, ".md"), paste0(test_files_seen, ".new.md"))
  } else {
    snaps <- character()
  }

  # Empirically determine variants
  snap_dirs <- list.dirs(snap_dir, recursive = FALSE)
  is_variant <- dir_contains(snap_dirs, c(snaps, snap_files_seen))
  variants <- basename(snap_dirs[is_variant])

  snap_files_seen_new <- paste0(
    tools::file_path_sans_ext(snap_files_seen),
    ".new.", tools::file_ext(snap_files_seen)
  )

  sort(c(
    snaps,
    outer(variants, snaps, file.path),
    snap_files_seen,
    outer(variants, snap_files_seen, file.path),
    snap_files_seen_new,
    outer(variants, snap_files_seen_new, file.path)
  ))
}

dir_contains <- function(paths, expected_files) {
  map_lgl(paths, ~ any(file.exists(file.path(.x, expected_files))))
}
