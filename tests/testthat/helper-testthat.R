
local_methods <- function(..., .frame = caller_env()) {
  scoped_bindings(.env = global_env(), .frame = .frame, ...)
}

local_Throwable_methods <- function(frame = caller_env()) {
  local_methods(
    .frame = frame,
    conditionMessage.Throwable = function(c, ...) unclass(c)$message,
    conditionCall.Throwable = function(c, ...) unclass(c)$call,
    `$.Throwable` = function(...) stop("forbidden"),
    `$<-.Throwable` = function(...) stop("forbidden")
  )
}
