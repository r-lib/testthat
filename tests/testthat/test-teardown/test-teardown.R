local_edition(2)
setup(write_lines("test", "teardown.txt"))
teardown(file.remove("teardown.txt"))

test_that("file is created", {
  expect_true(file.exists("teardown.txt"))
})
