context("Pending Tests")
describe("pending tests", {
  describe("expectation", {
    it("has a pending field = FALSE if not successful", {
      res <- expectation(FALSE, "error msg")
      expect_that(res$pending, is_false())
    })
    it("has a pending field = FALSE if success", {
      res <- expectation(TRUE, "error msg")
      expect_that(res$pending, is_false())
    })
    it("has a pending field = FALSE if error", {
      res <- expectation(NA, "error msg")
      expect_that(res$pending, is_false())
    })
    it("has a pending test result if set so", {
      res <- expectation(NA, "error msg", pending = TRUE)
      expect_that(res$pending, is_true())
    })
    it("can have a pending msg", {
      pending_msg <- "pending msg"
      res <- expectation(NA, "error msg", pending = TRUE, pending_msg = pending_msg)
      expect_equivalent(res$pending_msg, pending_msg)
    })
  })
  describe("pending()", {
    it("calls expect_that", {
      pending("we need to come up with a good mocking solution")
    })
  })
  describe("is_pending()", {
    it("creates a pending expectation", {
      res <- is_pending()(NA)
      expect_that(res$pending, is_true())
    })
    it("can also have a message", {
      pending_msg <- "my message"
      res <- is_pending(pending_msg)(NA)
      expect_that(res$pending, is_true())
      expect_equivalent(res$pending_msg, pending_msg)
    })
  })
})
