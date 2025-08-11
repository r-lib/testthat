# checks for any type of output

    Code
      expect_silent(warning("!"))
    Condition
      Error:
      ! Expected `warning("!")` to run silently.
      Actually produced: warnings.

---

    Code
      expect_silent(message("!"))
    Condition
      Error:
      ! Expected `message("!")` to run silently.
      Actually produced: messages.

---

    Code
      expect_silent(print("!"))
    Condition
      Error:
      ! Expected `print("!")` to run silently.
      Actually produced: output.

