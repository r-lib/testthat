rlang_version <- function() {
  if (use_rlang_1_0()) "rlang-1.0" else "rlang-pre-1.0"
}

local_use_rlang_1_0 <- function(frame = caller_env()) {
  if (is_installed("rlang") && utils::packageVersion("rlang") >= "0.99.0.9001") {
    local_options("testthat:::rlang_dep" = "1.0.0", .frame = frame)
  }
}
