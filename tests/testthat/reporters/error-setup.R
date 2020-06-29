f <- function() g()
g <- function() h()
h <- function() stop("!")
setup(f())
