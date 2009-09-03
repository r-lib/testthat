colourise <- function(text, fg = "black", bg = NULL) {
  if (Sys.getenv()["TERM"] != "xterm-color") {
    return(text)
  }
  
  col_escape <- function(col) {
    paste("\033[", col, "m", sep = "")
  }
  
  col <- .fg_colours[tolower(fg)]
  if (!is.null(bg)) {
    col <- paste(col, .bg_colours[tolower(bg)], sep = ";")
  }
  
  init <- col_escape(col)
  reset <- col_escape("0")
  paste(init, text, reset, sep = "")
}

           
.fg_colours <- c(
  "black" = "0;30",
  "blue" = "0;34",
  "green" = "0;32",
  "cyan" = "0;36",
  "red" = "0;31",
  "purple" = "0;35",
  "brown" = "0;33",
  "light gray" = "0;37",
  "dark gray" = "1;30",
  "light blue" = "1;34",
  "light green" = "1;32",
  "light cyan" = "1;36",
  "light red" = "1;31",
  "light purple" = "1;35",
  "yellow" = "1;33",
  "white" = "1;37"
)

.bg_colours <- c(
  "black" = "40",
  "red" = "41",
  "green" = "42",
  "brown" = "43",
  "blue" = "44",
  "purple" = "45",
  "cyan" = "46",
  "light gray" = "47"
)