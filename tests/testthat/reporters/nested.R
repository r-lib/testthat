describe("succeeded", {
  it("succeeded-1", expect_true(TRUE))
  it("succeeded-2", expect_true(TRUE))
})

describe("failed then succeeded", {
  it("failed-1", expect_true(FALSE))
  it("failed-2", expect_true(FALSE))
  it("succeeded", expect_true(TRUE))
})
