test_that("can test documentation from path or Rd object", {
  rd_path <- test_path("../../man/expect_length.Rd")
  skip_if_not(file.exists(rd_path))

  test_example(rd_path)
  test_rd(tools::parse_Rd(rd_path))
})

test_that("returns false if no examples", {
  rd_path <- test_path("../../man/test_examples.Rd")
  skip_if_not(file.exists(rd_path))

  expect_false(test_example(rd_path))
})

test_that("test_examples works with installed packages", {
  with_mock(
    test_rd = identity,
    {
      res <- test_examples()
    }
  )
  expect_true(length(res) > 1)
})

test_that("test_examples fails if no examples", {
  withr::local_envvar(list(TESTTHAT_PKG = ""))
  expect_error(test_examples("asdf"), "Could not find examples")
})
