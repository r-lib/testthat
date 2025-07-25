test_that("deprecated", {
  expect_snapshot(local_mock())
  expect_snapshot(with_mock(is_testing = function() FALSE))
})
