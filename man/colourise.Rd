\name{colourise}
\alias{colourise}
\title{Colourise text for display in the terminal.}
\usage{colourise(text, fg="black", bg)}

\description{
  Colourise text for display in the terminal.
}

\details{
  If R is not currently running in a system that supports
  terminal colours the text will be returned unchanged.

  Allowed colours are: black, blue, brown, cyan, dark gray,
  green, light blue, light cyan, light gray, light green,
  light purple, light red, purple, red, white, yellow
}
\arguments{
  \item{text}{character vector}
  \item{fg}{foreground colour, defaults to white}
  \item{bg}{background colour, defaults to transparent}
}
\examples{print(colourise("Red", "red"))
cat(colourise("Red", "red"), "\\n")
cat(colourise("White on red", "white", "red"), "\\n")}
