find_edition <- function(path, package = NULL) {
  from_environment <- Sys.getenv("TESTTHAT_EDITION")
  if (nzchar(from_environment)) {
    return(as.integer(from_environment))
  }
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

  cli::cli_warn(c(
    "{.code {what}} was deprecated in {edition_name(in_edition)}.",
    i = instead
  ))
}

edition_require <- function(in_edition, what) {
  if (
    edition_get() >= in_edition || isTRUE(getOption("testthat.edition_ignore"))
  ) {
    return()
  }

  cli::cli_abort("{.code {what}} requires {edition_name(in_edition)}.")
}

edition_name <- function(x) {
  if (x == 2) {
    "the 2nd edition"
  } else if (x == 3) {
    "the 3rd edition"
  } else {
    paste("edition ", x)
  }
}

#' Temporarily change the active testthat edition
#'
#' `local_edition()` allows you to temporarily (within a single test or
#' a single test file) change the active edition of testthat.
#' `edition_get()` allows you to retrieve the currently active edition.
#'
#' @export
#' @param x Edition Should be a single integer.
#' @param .env Environment that controls scope of changes. For expert use only.
local_edition <- function(x, .env = parent.frame()) {
  check_number_whole(x, min = 2, max = 3)
  local_bindings(edition = x, .env = the, .frame = .env)
}


#' @export
#' @rdname local_edition
edition_get <- function() {
  the$edition %||% find_edition(".")
}
