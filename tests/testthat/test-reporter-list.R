# regression test: test_file() used to crash with a NULL reporter
test_that("ListReporter with test_file and NULL reporter", {
  test_file_path <- 'test-list-reporter/test-exercise-list-reporter.R'
  expect_no_error(test_file(test_path(test_file_path), reporter = NULL))
})

# regression: check that an exception is reported if it is raised in the test file outside
# of a test (test_that() call).
# N.B: the exception here happens between two tests: "before" and "after"
test_that("ListReporter - exception outside of test_that()", {
  test_file_path <- 'test-list-reporter/test-exception-outside-tests.R'
  res <- test_file(test_path(test_file_path), reporter = NULL)

  expect_true(is.list(res))
  # 2 results: first test "before" + the exception. N.B: the 2nd test "after" is not reported
  expect_length(res, 2)

  df <- as.data.frame(res)

  # the first result should be the results of test "before", that was successful
  expect_identical(df$test[1], 'before')
  expect_equal(df$passed[1], 1)
  expect_false(df$error[1])

  # the 2nd result should be the exception
  expect_true(is.na(df$test[2])) # no test name
  expect_true(df$error[2]) # it was an error
  expect_match(res[[2]]$results[[1]]$message, "dying outside of tests")
})


test_that("captures error if only thing in file", {
  test_file_path <- 'test-list-reporter/test-only-error.R'
  res <- test_file(test_path(test_file_path), reporter = NULL)

  expect_length(res, 1)
  expect_s3_class(res[[1]]$results[[1]], "expectation_error")
})

# ListReporter on a "standard" test file: 2 contexts, passing, failing and crashing tests
test_that("exercise ListReporter", {
  test_file_path <- 'test-list-reporter/test-exercise-list-reporter.R'
  res <- test_file(test_path(test_file_path), reporter = NULL)
  expect_s3_class(res, "testthat_results")

  # we convert the results to data frame for convenience
  df <- as.data.frame(res)
  expect_equal(nrow(df), 5)
  expect_equal(
    df$test,
    c("test1", "test2", "test-pass", "test-fail", "test-error")
  )

  # test "A failing test" is the only failing test
  expect_equal(df$failed, c(0, 0, 0, 1, 0))
  expect_identical(expectation_type(res[[4]]$results[[1]]), "failure")

  # test "A crashing test" is the only crashing test
  expect_equal(df$error, c(FALSE, FALSE, FALSE, FALSE, TRUE))
  expect_identical(expectation_type(res[[5]]$results[[1]]), "error")
})

# bare expectations are ignored
test_that("ListReporter and bare expectations", {
  test_file_path <- 'test-list-reporter/test-bare-expectations.R'
  res <- test_file(test_path(test_file_path), reporter = NULL)

  df <- as.data.frame(res)

  # 2 tests, "before" and "after". no result for the bare expectation
  expect_identical(df$test, c("before", "after"))
})

test_that("works in parallel", {
  lr <- ListReporter$new()

  lr$start_file("f1")
  lr$start_test(NULL, "t11")
  lr$add_result(NULL, "t11", new_expectation("success", "msg111"))

  lr$start_file("f2")
  lr$start_test(NULL, "t21")
  lr$add_result(NULL, "t21", new_expectation("success", "msg211"))

  lr$start_file("f1")
  lr$start_test(NULL, "t11")
  lr$add_result(NULL, "t11", new_expectation("success", "msg112"))
  lr$end_test(NULL, "t11")

  lr$start_file("f2")
  lr$start_test(NULL, "t21")
  lr$add_result(NULL, "t21", new_expectation("success", "msg212"))
  lr$end_test(NULL, "t21")

  lr$start_file("f2")
  lr$start_test(NULL, "t22")
  lr$add_result(NULL, "t22", new_expectation("skip", "skip221"))
  lr$end_test(NULL, "t22")

  lr$start_file("f2")
  lr$end_file()

  lr$start_file("f1")
  lr$end_file()

  results <- as.data.frame(lr$get_results())
  expect_snapshot({
    results[, c(1:8, 12:13)]
  })

  expect_true(all(!is.na(results$user)))
  expect_true(all(!is.na(results$system)))
  expect_true(all(!is.na(results$real)))
})
