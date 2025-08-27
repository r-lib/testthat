test_that("stdout/stderr in parallel code", {
  skip_on_covr()
  withr::local_envvar(TESTTHAT_PARALLEL = "TRUE")

  assemble_msgs <- function(txt, test_name) {
    prefix <- paste0("> ", test_name, ": ")
    parts <- sub(
      prefix,
      "",
      grep(prefix, out, fixed = TRUE, value = TRUE),
      fixed = TRUE
    )
    paste(parts, collapse = "")
  }

  for (reporter in c("summary", "progress")) {
    out <- capture.output(suppressMessages(testthat::test_local(
      test_path("test-parallel", "stdout"),
      reporter = reporter
    )))
    msg2 <- assemble_msgs(out, "test-stdout-2.R")
    expect_match(msg2, "This is a message!", fixed = TRUE)
    msg3 <- assemble_msgs(out, "test-stdout-3.R")
    expect_match(msg3, "[1]  1  2  3", fixed = TRUE)
  }
})
