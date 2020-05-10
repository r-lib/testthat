find_edition <- function(path) {
  desc <- tryCatch(
    pkgload::pkg_desc(path),
    error = function(e) NULL
  )

  if (is.null(desc)) {
    return(2L)
  }

  desc$get_field("Config/testthat/edition", default = 2L)
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

local_edition <- function(x, env = caller_env()) {
  old <- edition_set(x)
  withr::defer(edition_set(old), envir = env)
}

edition_set <- function(x) {
  env_poke(testthat_env, "edition", x)
}
edition_get <- function() {
  env_get(testthat_env, "edition", default = 2L)
}

