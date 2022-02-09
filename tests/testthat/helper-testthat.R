rlang_version <- function() {
  if (use_rlang_1_0()) "rlang-1.0" else "rlang-pre-1.0"
}

local_use_rlang_1_0 <- function(frame = caller_env()) {
  local_options("testthat:::rlang_dep" = TRUE, .frame = frame)
}
