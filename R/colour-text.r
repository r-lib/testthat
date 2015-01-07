allowed_colors <- c("black", "blue", "brown", "cyan", "dark gray",
  "green", "light blue", "light cyan", "light gray", "light green",
  "light purple", "light red", "purple", "red", "white", "yellow")

testthat_colours <- list(
  passed = crayon::green,
  skipped = crayon::yellow,
  error = crayon::red
)

#' @export
colourise <- function(text, as = c("passed", "skipped", "error"), fg, bg) {
  param_warn <- function(param) {
    warning("The ", param, " parameter to testthat::colourise is deprecated.", call. = FALSE)
  }

  if (any(is.element(tolower(as), allowed_colors))) {
    param_warn("fg")
    return(Recall(text))
  } else if (!missing(fg)) {
    param_warn("fg")
  }
  
  if (!missing(bg)) {
    param_warn("bg")
  }

  colour_config <- getOption("testthat.use_colours", TRUE)
  if (!isTRUE(colour_config)) return(text)
  as <- match.arg(as)
  testthat_colours[[as]](text)
}

