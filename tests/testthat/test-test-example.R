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
