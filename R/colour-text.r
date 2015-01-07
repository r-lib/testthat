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
  fg_warn <- function() warning("The fg parameter to testthat::colourise is deprecated.", call. = FALSE)
  if (any(is.element(as, allowed_colors))) {
    fg_warn()
    return(colourise(text))
  } else if (!missing(fg)) {
    fg_warn()
  }
  
  if (!missing(bg)) {
    warning("The bg parameter to testthat::colourise is deprecated.", call. = FALSE)
  }

  colour_config <- getOption("testthat.use_colours", TRUE)
  if (!isTRUE(colour_config)) return(text)
  as <- match.arg(as)
  testthat_colours[[as]](text)
}

