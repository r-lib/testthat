# Find expression that created a variable
find_expr <- function(name, env = parent.frame()) {
  subs <- do.call("substitute", list(as.name(name), env))
  str_c(deparse(subs, width.cutoff = 500), collapse = "\n")
}
