test_that("Written paths are parsed correctly on Win too", {
  tmp <- tempfile()
  write_lines(path_to_write(tmp), tmp)
  written_path <- read_lines(tmp)

  expect_true(file.exists(written_path))
})
