test_that("auto_test_package_job throw expected errors", {
  if (!requireNamespace("rstudioapi")) {
    expect_error(auto_test_package_job(), "rstudioapi required")
  } else if (!rstudioapi::isAvailable("1.2")) {
    expect_error(
      auto_test_package_job(),
      "Need at least|RStudio not running"
    )
  } else {
    expect_error(auto_test_package_job(1), "invalid 'path'")
  }
})


test_that("stop_auto_test_job throw expected errors", {

  if (!requireNamespace("rstudioapi")) {
    expect_error(stop_auto_test_job(), "rstudioapi required")


  } else if (!rstudioapi::isAvailable("1.2")) {
    expect_error(stop_auto_test_job(),
      "Need at least|RStudio not running"
    )


  } else if (can_stop_jobs()) {
    expect_error(stop_auto_test_job(1), "does not exists")

  } else {
    expect_warning(stop_auto_test_job(),
      "jobs cannot be stopped automatically"
    )

    expect_message(suppressWarnings(stop_auto_test_job()),
      "Jobs can be stopped manually"
    )
  }
})


