test_that("now defunct", {
  expect_snapshot(error = TRUE, {
    local_mock()
    with_mock(is_testing = function() FALSE)
  })
})
