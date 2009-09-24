# Peril is that some names are already used by existing functions:
# expect_that(a, inherits("character")) 
# but there are alternatives:
expect_that(a, is_a("vector"))
expect_that(a, is_a("list"))

expect_that(a, can_be_a("data.frame"))  
# i.e. that as.data.frame doesn't throw any error

expect_that(b, is_identical_to(2))
expect_that(b, equals(2))
expect_that(b, throws_error("Field b not found"))
# expect_that(b, gives_warning("Field b not found"))
# expect_that(b, gives_message("Field b not found"))
expect_that(print(b), prints_text("Field b not found"))

expect_that(TRUE, is_true())
expect_that(FALSE, is_false())

# Should be able to cache from previous run and then check that it doesn't
# change.  Would require cross invocation cache, and way of resetting.
expect_that(a, is_unchanged())

# Should be able to make assertions about speed
expect_that(a, takes_less_than(60, "seconds"))

# Could have aliases for common tests:
expect_that(a, has_names("a", "b", "c"))
expect_that(names(a), equals(c("a", "b", "c")))

expect_that(a, has_length(20))
expect_that(length(a), equals(20))
# But only saves a few characters
