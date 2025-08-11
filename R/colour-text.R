colourise <- function(
  text,
  as = c("success", "skip", "warning", "failure", "error")
) {
  if (has_colour()) {
    unclass(cli::make_ansi_style(testthat_style(as))(text))
  } else {
    text
  }
}

has_colour <- function() {
  isTRUE(getOption("testthat.use_colours", TRUE)) &&
    cli::num_ansi_colors() > 1
}

testthat_style <- function(
  type = c("success", "skip", "warning", "failure", "error")
) {
  type <- match.arg(type)

  c(
    success = "green",
    skip = "blue",
    warning = "magenta",
    failure = "orange",
    error = "orange"
  )[[type]]
}
