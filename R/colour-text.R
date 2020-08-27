colourise <- function(text, as = c("success", "skip", "warning", "failure", "error")) {
  if (has_colour()) {
    crayon::style(text, testthat_style(as))
  } else {
    text
  }
}

has_colour <- function() {
  isTRUE(getOption("testthat.use_colours", TRUE)) && crayon::has_color()
}

testthat_style <- function(type = c("success", "skip", "warning", "failure", "error")) {
  type <- match.arg(type)

  c(
    success = "green",
    skip = "blue",
    warning = "magenta",
    failure = "orange",
    error = "orange"
  )[[type]]
}
