find_edition <- function(path, package = NULL) {
  desc <- find_description(path, package)
  if (is.null(desc)) {
    return(2L)
  }

  as.integer(desc$get_field("Config/testthat/edition", default = 2L))
}

find_description <- function(path, package = NULL) {
  if (!is.null(package)) {
    return(desc::desc(package = package))
  } else {
    tryCatch(
      pkgload::pkg_desc(path),
      error = function(e) NULL
    )
  }
}

edition_deprecate <- function(in_edition, what, instead = NULL) {
  if (edition_get() < in_edition) {
    return()
  }

  warn(c(
    paste0("`", what, "` is deprecated as of edition ", in_edition, "."),
    i = instead
  ))
}

#' Temporarily change the active testthat edition
#'
#' `local_edition()` allows you to temporarily (within a single test or
#' a single test file) change the active edition of testthat.
#'
#' @export
#' @param x Edition Should be a single integer.
#' @param .env Environment that controls scope of changes. For expert use only.
#' @keywords internal
local_edition <- function(x, .env = parent.frame()) {
  stopifnot(is.numeric(x) && length(x) == 1)
  old <- edition_set(x)
  withr::defer(edition_set(old), envir = .env)
}

edition_set <- function(x) {
  if (is_zap(x)) {
    env_unbind(testthat_env, "edition")
  } else {
    env_poke(testthat_env, "edition", x)
  }
}

edition_get <- function() {
  if (has_reporter()) {
    # set by local_test_directory() in test_files()
    env_get(testthat_env, "edition", default = 2L)
  } else {
    # look in working directory; should only happen in bare expect_equal()
    find_edition(".")
  }
}
