


make_label <- function(object, info = NULL, label = NULL) {
  if (!is.null(info)) {
    warning("`info` has been deprecated.", call. = FALSE)
  }
  if (!is.null(label)) {
    warning("`label` has been deprecated.", call. = FALSE)
  }

  label(object)
}

label <- function(obj) {
  x <- lazyeval::lazy(obj)$expr

  if (is.atomic(x)) {
    format(x)
  } else if (is.name(x)) {
    paste0("`", as.character(x), "`")
  } else {
    chr <- deparse(x)
    if (length(chr) > 1) {
      chr <- paste0(chr[1], "...")
    }
    chr
  }
}
