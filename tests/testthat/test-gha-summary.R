test_that("multiplication works", {
  local_mocked_bindings(gha_path = function() stdout())
  expect_snapshot(create_gha_summary(list()))
})
