test_that("empty hash succeeds with warning", {
  expect_success(
    expect_warning(
      expect_known_hash(1:10),
      "No recorded hash"
    )
  )
})

test_that("only succeeds if hash is correct", {
  expect_success(expect_known_hash(1:10, "c08951d2c2"))
  expect_failure(expect_known_hash(1:10, "c08951d2c3"))
})
