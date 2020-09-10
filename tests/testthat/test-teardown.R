test_that("teardown adds to queue", {
  local_edition(2)
  on.exit(teardown_reset())

  expect_length(file_teardown_env$queue, 0)

  teardown({})
  expect_length(file_teardown_env$queue, 1)

  teardown({})
  expect_length(file_teardown_env$queue, 2)
})

test_that("teardowns runs in order", {
  local_edition(2)
  on.exit(teardown_reset())

  a <- 1
  teardown(a <<- 2)
  teardown(a <<- 3)
  expect_length(file_teardown_env$queue, 2)

  teardown_run()
  expect_equal(a, 3)
  expect_length(file_teardown_env$queue, 0)
})

test_that("teardown run after tests complete", {
  test_file(test_path("test-teardown/test-teardown.R"), "silent")
  expect_false(file.exists(test_path("test-teardown/teardown.txt")))
})
