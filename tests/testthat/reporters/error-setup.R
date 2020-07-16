f <- function() g()
g <- function() h()
h <- function() stop("!")

local_edition(2)
setup(f())
