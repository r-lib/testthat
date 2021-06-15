test_that("errors reset snapshots", {
  if (nzchar(Sys.getenv("TESTTHAT_REGENERATE_SNAPS"))) {
    expect_snapshot(print(1))
  } else {
    expect_snapshot(stop("failing"))
  }
})

test_that("skips reset snapshots", {
  if (nzchar(Sys.getenv("TESTTHAT_REGENERATE_SNAPS"))) {
    expect_snapshot(print(1))
  } else {
    expect_snapshot(skip("skipping"))
  }
})
