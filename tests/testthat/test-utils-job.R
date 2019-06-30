test_that("Written paths are parsed correctly on Win too", {
  tmp <- tempfile()
  write_lines(path_to_write(tmp), tmp)
  written_path <- read_lines(tmp)

  expect_true(file.exists(written_path))
})

test_that("temp file is created", {
  tmp <- tmp_for_job("a", "b")
  on.exit(unlink(tmp))

  expect_true(file.exists(tmp))
})

test_that("temp file have the expected name and content", {
  tmp1 <- tmp_for_job("a", "c")
  tmp2 <- tmp_for_job("a-b", "c")
  on.exit(unlink(c(tmp1, tmp2)))

  name1 <- sub("-[^-]+\\.R$", "", basename(tmp1))
  name2 <- sub("-[^-]+\\.R$", "", basename(tmp2))
  content2 <- read_lines(tmp2)

  expect_equal(name1, "a")
  expect_equal(name2, "a-b")
  expect_equal(content2, "c")
})

test_that("verify_job_exists returns error correctly", {
  if (!rstudioapi::isAvailable("1.2")) {
    expect_false(verify_job_exists())
  } else {
    expect_error(verify_job_exists(), "Must specify job ID")
    expect_error(verify_job_exists(1), "does not exist")
  }
})

test_that("explain_how_to_close_job return messages and FALSE", {
  expect_warning(explain_how_to_close_job(),
    "jobs cannot be closed automatically"
  )
  expect_message(
    suppressWarnings(explain_how_to_close_job()),
    "Jobs can be stopped manually"
  )
  expect_false(suppressWarnings(explain_how_to_close_job()))
})


test_that("can_close_jobs", {
  if (!rstudioapi::isAvailable("1.2")) {
    expect_false(can_close_jobs())
  } else if (rstudioapi::hasFun("launcher.controlJob")) {
    expect_true(can_close_jobs())
  } else {
    expect_false(can_close_jobs())
  }
})


test_that("close_auto_test_package_job", {
  if (!rstudioapi::isAvailable("1.2")) {
    expect_error(
      close_auto_test_package_job(),
      "Need at least|RStudio not running"
    )
  }
})



test_that("rstudioapi_required", {
  if (requireNamespace("rstudioapi")) {
    expect_true(rstudioapi_required())
  } else {
    expect_error(rstudioapi_required(), "rstudioapi required")
  }
})
