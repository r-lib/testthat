test_that("can extract prequel", {
  # fmt: skip
  exprs <- parse_text("
    x <- 1
    y <- 2
    test_that('foo', {
      expect_true(TRUE)
    })
  ")
  expect_snapshot(base::writeLines(extract_test_lines(exprs, 4)))
})

test_that("preserves code format but not comments", {
  # fmt: skip
  exprs <- parse_text("
    1 +   1 # 2
    test_that('foo', {
      2 +   2 # 4
    })
  ")
  expect_snapshot(base::writeLines(extract_test_lines(exprs, 3)))
})

test_that("can extract selected expectation", {
  # fmt: skip
  exprs <- parse_text("
    test_that('foo', {
      expect_true(TRUE)
      expect_false(FALSE)
    })
  ")
  expect_snapshot(base::writeLines(extract_test_lines(exprs, 2)))
})

test_that("errors if can't find test", {
  # fmt: skip
  exprs <- parse_text("
    # line 1
    test_that('foo', {
      expect_true(TRUE)
    })
    # line 5
  ")
  expect_error(extract_test_lines(exprs, 1), "Failed to find test")
  expect_error(extract_test_lines(exprs, 5), "Failed to find test")
})
