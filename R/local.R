local_width <- function(width = 80, .env = parent.frame()) {
  withr::local_options(list(width = width), .local_envir = .env)
  withr::local_envvar(list(RSTUDIO_CONSOLE_WIDTH = width), .local_envir = .env)
}

local_reproducible_output <- function(width = 80,
                                      crayon = FALSE,
                                      unicode = FALSE,
                                      .env = parent.frame()) {

  local_width(width = width, .env = .env)
  withr::local_options(
    list(
      crayon.enabled = crayon,
      cli.unicode = unicode,
      useFancyQuotes = FALSE,
      lifecycle_verbosity = "warning",
      OutDec = "."
    ),
    .local_envir = .env
  )
  withr::local_envvar(list(RSTUDIO = 0), .local_envir = .env)
  withr::local_collate("C", .local_envir = .env)
}
