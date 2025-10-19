# basic comparisons work

    Code
      expect_lt(x, 10)
    Condition
      Error:
      ! Expected `x` < 10.
      Actual comparison: 10.0 >= 10.0
      Difference: 0.0 >= 0

---

    Code
      expect_gt(x, 10)
    Condition
      Error:
      ! Expected `x` > 10.
      Actual comparison: 10.0 <= 10.0
      Difference: 0.0 <= 0

# useful output when numbers are very small

    Code
      expect_lte(1.1 * x, x)
    Condition
      Error:
      ! Expected `1.1 * x` <= `x`.
      Actual comparison: 0.0000110 > 0.0000100
      Difference: 0.0000010 > 0

---

    Code
      expect_gt(x, 1.1 * x)
    Condition
      Error:
      ! Expected `x` > `1.1 * x`.
      Actual comparison: 0.0000100 <= 0.0000110
      Difference: -0.0000010 <= 0

# useful output when difference is zero

    Code
      expect_lt(x, 100)
    Condition
      Error:
      ! Expected `x` < 100.
      Actual comparison: 100.0 >= 100.0
      Difference: 0.0 >= 0

# useful output when differnce is large

    Code
      expect_lt(x, 0.001)
    Condition
      Error:
      ! Expected `x` < 0.001.
      Actual comparison: 100.000 >= 0.001
      Difference: 99.999 >= 0

# comparisons with Inf work

    Code
      expect_lt(x, Inf)
    Condition
      Error:
      ! Expected `x` < Inf.
      Actual comparison: Inf >= Inf

# comparisons with NA work

    Code
      expect_lt(x, 10)
    Condition
      Error:
      ! Expected `x` < 10.
      Actual comparison: NA >= 10.0

# comparisons with POSIXct objects work

    Code
      expect_lt(time2, time)
    Condition
      Error:
      ! Expected `time2` < `time`.
      Actual comparison: "2020-01-01 01:00:01" >= "2020-01-01 01:00:00"

---

    Code
      expect_lte(time2, time)
    Condition
      Error:
      ! Expected `time2` <= `time`.
      Actual comparison: "2020-01-01 01:00:01" > "2020-01-01 01:00:00"

---

    Code
      expect_gt(time, time2)
    Condition
      Error:
      ! Expected `time` > `time2`.
      Actual comparison: "2020-01-01 01:00:00" <= "2020-01-01 01:00:01"

---

    Code
      expect_gte(time, time2)
    Condition
      Error:
      ! Expected `time` >= `time2`.
      Actual comparison: "2020-01-01 01:00:00" < "2020-01-01 01:00:01"

# comparisons with Date objects work

    Code
      expect_lt(date2, date)
    Condition
      Error:
      ! Expected `date2` < `date`.
      Actual comparison: "2020-01-02" >= "2020-01-01"

---

    Code
      expect_lte(date2, date)
    Condition
      Error:
      ! Expected `date2` <= `date`.
      Actual comparison: "2020-01-02" > "2020-01-01"

---

    Code
      expect_gt(date, date2)
    Condition
      Error:
      ! Expected `date` > `date2`.
      Actual comparison: "2020-01-01" <= "2020-01-02"

---

    Code
      expect_gte(date, date2)
    Condition
      Error:
      ! Expected `date` >= `date2`.
      Actual comparison: "2020-01-01" < "2020-01-02"

# comparisons with character objects work

    Code
      expect_lt("b", "a")
    Condition
      Error:
      ! Expected "b" < "a".
      Actual comparison: "b" >= "a"

---

    Code
      expect_lte("b", "a")
    Condition
      Error:
      ! Expected "b" <= "a".
      Actual comparison: "b" > "a"

---

    Code
      expect_gt("a", "b")
    Condition
      Error:
      ! Expected "a" > "b".
      Actual comparison: "a" <= "b"

---

    Code
      expect_gte("a", "b")
    Condition
      Error:
      ! Expected "a" >= "b".
      Actual comparison: "a" < "b"

# comparison must yield a single logical

    Code
      expect_lt(1:10, 5)
    Condition
      Error in `expect_lt()`:
      ! Result of comparison must be `TRUE`, `FALSE`, or `NA`

