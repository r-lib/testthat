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

  it("has to have a valid description for the block", {
    expect_snapshot(error = TRUE, {
      describe()
      describe("")
      describe(c("a", "b"))

      it()
      it("")
      it(c("a", "b"))
    })
  })

  someInternalVariable <- 1
  it("should be possible to use variables from outer environments", {
    expect_equal(1, someExternalVariable)
    expect_equal(1, someInternalVariable)
  })

  # prefix is needed to test this use case
  testthat::it("should be possible to use variables from outer environments with package prefix", {
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
