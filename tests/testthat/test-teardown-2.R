test_that("teardown is completed by previous test", {
  expect_false(file.exists("teardown.txt"))
})
