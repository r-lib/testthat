someExternalVariable <- 1
describe("describe", {
  it("can contain nested describe blocks", {
    describe("addition", {
      it("should be able to add two numbers", {
        expect_equal(2, 1 + 1)
      })
      describe("sub feature", {
        it("should also work", {
          expect_equal(2, 1 + 1)
        })
      })
    })
  })

  it("can have not yet implemented specs", {
    describe("Millennium Prize Problems", {
      it("can be shown that P != NP")
    })
  })

  it("has to have a description for the block", {
    expect_error(describe({}))
    expect_error(describe("", {}))
    expect_error(describe("test", {it()}))
    expect_error(describe("test", {it("")}))
  })

  it("has to have a description of length 1", {
    expect_error(describe(c("a", "b"), {}))
    expect_error(describe("test", {it(c("a", "b"))}))
  })

  someInternalVariable <- 1
  it("should be possible to use variables from outer environments", {
    expect_equal(1, someExternalVariable)
    expect_equal(1, someInternalVariable)
  })

  it("should not be possible to access variables from other specs (1)", {
    some_test_var <- 5
  })

  it("should not be possible to access variables from other specs (2)", {
    expect_false(exists("some_test_var"))
  })
})
