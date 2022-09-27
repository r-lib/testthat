# matched conditions give informative message

    Code
      expect_no_warning(foo())
    Condition
      Error:
      ! Expected `foo()` to run without any warnings.
      i Actually got a <test>:
        Warning:
        This is a problem!
    Code
      expect_no_warning(foo(), message = "problem")
    Condition
      Error:
      ! Expected `foo()` to run without any warnings matching pattern 'problem'.
      i Actually got a <test>:
        Warning:
        This is a problem!
    Code
      expect_no_warning(foo(), class = "test")
    Condition
      Error:
      ! Expected `foo()` to run without any warnings of class 'test'.
      i Actually got a <test>:
        Warning:
        This is a problem!
    Code
      expect_no_warning(foo(), message = "problem", class = "test")
    Condition
      Error:
      ! Expected `foo()` to run without any warnings of class 'test' matching pattern 'problem'.
      i Actually got a <test>:
        Warning:
        This is a problem!

