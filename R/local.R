local_width <- function(width = 80, .local_envir = parent.frame()) {
  withr::local_options(
    list(
      width = width
    ),
    .local_envir = .local_envir
  )
  withr::local_envvar(
    list(
      RSTUDIO_CONSOLE_WIDTH = width
    ),
    .local_envir = .local_envir
  )
}

local_reproducible_output <- function(width = 80,
                                      crayon = FALSE,
                                      unicode = FALSE,
                                      .local_envir = parent.frame()) {

  local_width(width = width, .local_envir = .local_envir)
  withr::local_options(
    list(
      crayon.enabled = crayon,
      cli.unicode = unicode,
      useFancyQuotes = FALSE,
      lifecycle_verbosity = "warning",
      OutDec = "."
    ),
    .local_envir = .local_envir
  )
  withr::local_envvar(
    list(RSTUDIO = 0),
    .local_envir = .local_envir
  )
}
