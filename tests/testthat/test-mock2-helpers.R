test_that("mock_output_sequence() works", {
  mocked_sequence <- mock_output_sequence("3", "This is a note", "n")
  expect_equal(mocked_sequence(), "3")
  expect_equal(mocked_sequence(), "This is a note")
  expect_equal(mocked_sequence(), "n")
  expect_snapshot(mocked_sequence(), error = TRUE)
})

test_that("mock_output_sequence() works -- list", {
  x <- list("3", "This is a note", "n")
  mocked_sequence <- mock_output_sequence(!!!x)
  expect_equal(mocked_sequence(), "3")
  expect_equal(mocked_sequence(), "This is a note")
  expect_equal(mocked_sequence(), "n")
})

test_that("mock_output_sequence()'s recycling works", {
  mocked_sequence <- mock_output_sequence(
    "3",
    "This is a note",
    "n",
    recycle = TRUE
  )
  expect_equal(mocked_sequence(), "3")
  expect_equal(mocked_sequence(), "This is a note")
  expect_equal(mocked_sequence(), "n")
  expect_equal(mocked_sequence(), "3")
  expect_equal(mocked_sequence(), "This is a note")
  expect_equal(mocked_sequence(), "n")
})
