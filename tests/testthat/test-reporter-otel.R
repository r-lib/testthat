test_that("we skip setting attributes for non-package tests", {
  withr::local_envvar(NOT_CRAN = NA)
  expect_null(get_pkg_resource_attributes())
})

test_that("we detect package resources attributes correctly", {
  withr::local_envvar(
    NOT_CRAN = "true",
    OTEL_RESOURCE_ATTRIBUTES = NA,
    GITHUB_REPOSITORY = NA
  )

  # Since we're in testthat, we should get attributes for the testthat package.
  attrs <- get_pkg_resource_attributes(test_path(".."))
  expect_type(attrs, "list")
  expect_equal(attrs$service.name, "testthat")
  expect_match(as.character(attrs$service.version), "^[0-9]+\\.[0-9]+\\.[0-9]+")
  expect_equal(
    attrs$vcs.repository.url.full,
    "https://github.com/r-lib/testthat"
  )
})

test_that("package resources attributes respect environment variable overrides", {
  withr::local_envvar(
    NOT_CRAN = "true",
    OTEL_RESOURCE_ATTRIBUTES = "service.name=override,service.version=1.2.3"
  )

  attrs <- get_pkg_resource_attributes(test_path(".."))
  expect_equal(attrs$service.name, "override")
  expect_equal(attrs$service.version, "1.2.3")
  # Other attributes should still be present
  expect_equal(
    attrs$vcs.repository.url.full,
    "https://github.com/r-lib/testthat"
  )
})

test_that("we detect resource attributes from GitHub Actions", {
  withr::local_envvar(
    GITHUB_REPOSITORY = "r-lib/testthat-otel",
    GITHUB_SERVER_URL = "https://github.com",
    GITHUB_SHA = "test"
  )

  expect_equal(get_repo_url(), "https://github.com/r-lib/testthat-otel")
  expect_equal(get_git_revision(), "test")
})

test_that("the reporter generates the expected spans", {
  skip_if_not_installed("otelsdk")

  withr::local_envvar(NOT_CRAN = "true")

  spans <- otelsdk::with_otel_record({
    tracer <- otel::get_tracer("test")
    reporter <- OpenTelemetryReporter$new(tracer = tracer)
    with_reporter(reporter, {
      test_one_file(test_path("reporters/tests.R"))
    })
  })[["traces"]]

  expect_length(spans, 14)

  # TODO: Ensure that the test_suite and test_case spans have the correct parent.

  # Ensure we generate "test_suite" spans for each context.
  suite_spans <- Filter(function(x) x$name == "test_suite", spans)
  expect_length(suite_spans, 6)
  expect_equal(
    sapply(suite_spans, function(x) x$attributes$test.suite.name),
    c("reporters/tests", "Successes", "Failures", "Errors", "Skips", "Warnings")
  )

  # Ensure that the filepath is set correctly on the spans.
  expect_equal(
    sapply(suite_spans, function(x) x$attributes$code.filepath),
    rep("tests/testthat/reporters/tests.R", 6)
  )

  # Ensure we generate "test_case" spans for each test.
  test_spans <- Filter(function(x) x$name == "test_case", spans)
  expect_length(test_spans, 8)
  expect_equal(
    sapply(test_spans, function(x) x$attributes$test.case.name),
    c(
      "Success",
      "Failure:1",
      "Failure:2a",
      "Error:1",
      "errors get tracebacks",
      "explicit skips are reported",
      "empty tests are implicitly skipped",
      "warnings get backtraces"
    )
  )

  # Ensure that tests that failed or errored have the expected status.
  failed_spans <- Filter(function(x) x$status == "error", spans)
  expect_length(failed_spans, 4)

  # And that they record an exception with the correct file path.
  expect_true(all(sapply(
    failed_spans,
    function(x)
      length(x$events) > 0 &&
        x$events[[1]]$name == "exception" &&
        x$events[[1]]$attributes$code.filepath ==
          "tests/testthat/reporters/tests.R"
  )))
})
