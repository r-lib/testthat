context("expect_known_value")

test_that("correctly matches to a file", {
  x <- 1
  expect_success(expect_known_value(x, "one.rds"))

  x <- 2
  expect_failure(expect_known_value(x, "one.rds", update = FALSE))
})

test_that("first run is successful", {
  expect_success(
    expect_warning(
      expect_known_value(2, "two.rds"),
      "Creating reference"
    )
  )
  unlink("two.rds")
})

test_that("equal_to_ref does not overwrite existing", {
  tmp_rds <- tempfile(fileext=".rds")
  on.exit(unlink(tmp_rds))
  ref_obj1 <- 1:3
  ref_obj2 <- 2:4
  saveRDS(ref_obj1, tmp_rds)

  expect_success(expect_equal_to_reference(ref_obj1, tmp_rds))

  # Failure does not update object
  expect_failure(expect_equal_to_reference(ref_obj2, tmp_rds))
  expect_equal(readRDS(tmp_rds), ref_obj1)

  # Now failure does update object
  expect_failure(expect_equal_to_reference(ref_obj2, tmp_rds, update=TRUE))
  expect_success(expect_equal_to_reference(ref_obj2, tmp_rds))
})
