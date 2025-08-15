# generates useful failure message

    Code
      expect_silent(f())
    Condition
      Error:
      ! Expected `f()` to run silently.
      Actual noise: output, warnings, messages.

