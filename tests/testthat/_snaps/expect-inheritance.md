# expect_type checks typeof

    Code
      expect_type(x, "double")
    Condition
      Error:
      ! Expected `x` to have type 'double'.
      Actual type: 'integer'

# expect_type validates its inputs

    Code
      expect_type(1, c("integer", "double"))
    Condition
      Error in `expect_type()`:
      ! `type` must be a single string, not a character vector.

# expect_is checks class

    Code
      expect_is(factor("a"), "integer")
    Condition
      Error:
      ! Expected `factor("a")` to inherit from `'character'`.
      Actual inheritance: `'factor'`

# expect_s3/s4_class fails if appropriate type

    Code
      expect_s3_class(x1, "double")
    Condition
      Error:
      ! Expected `x1` to be an S3 object.
      Actual OO type: none.

---

    Code
      expect_s3_class(x2, "double")
    Condition
      Error:
      ! Expected `x2` to be an S3 object.
      Actual OO type: S4.

---

    Code
      expect_s4_class(x3, "double")
    Condition
      Error:
      ! Expected `x3` to be an S4 object.
      Actual OO type: S3.

# expect_s[34]_class can check not S3/S4

    Code
      expect_s3_class(factor(), NA)
    Condition
      Error:
      ! Expected `factor()` to not be an S3 object.

---

    Code
      expect_s4_class(A(), NA)
    Condition
      Error:
      ! Expected `A()` to not be an S4 object.

# test_s4_class respects class hierarchy

    Code
      expect_s4_class(C(), "D")
    Condition
      Error:
      ! Expected `C()` to inherit from 'D'.
      Actual class: 'C'/'A'/'B'/'list'/'vector'

# expect_s3_class validates its inputs

    Code
      expect_s3_class(factor("a"), 1)
    Condition
      Error in `expect_s3_class()`:
      ! `class` must be a character vector or NA, not the number 1.
    Code
      expect_s3_class(factor("a"), "factor", exact = "yes")
    Condition
      Error in `expect_s3_class()`:
      ! `exact` must be `TRUE` or `FALSE`, not the string "yes".

# test_s3_class respects class hierarchy

    Code
      expect_s3_class(x, "c")
    Condition
      Error:
      ! Expected `x` to inherit from 'c'.
      Actual class: 'a'/'b'

---

    Code
      expect_s3_class(x, c("c", "d"))
    Condition
      Error:
      ! Expected `x` to inherit from 'c'/'d'.
      Actual class: 'a'/'b'

# test_s3_class can request exact match

    Code
      expect_s3_class(x, "a", exact = TRUE)
    Condition
      Error:
      ! Expected `x` to have class 'a'.
      Actual class: 'a'/'b'

# expect_s4_class validates its inputs

    Code
      expect_s4_class(factor("a"), 1)
    Condition
      Error in `expect_s4_class()`:
      ! `class` must be a character vector or NA, not the number 1.

# expect_r6_class generates useful failures

    Code
      expect_r6_class(x, "Student")
    Condition
      Error:
      ! Expected `x` to be an R6 object.
      Actual OO type: none.
    Code
      expect_r6_class(person, "Student")
    Condition
      Error:
      ! Expected `person` to inherit from 'Student'.
      Actual class: 'Person'/'R6'

# expect_r6_class validates its inputs

    Code
      expect_r6_class(1, c("Person", "Student"))
    Condition
      Error in `expect_r6_class()`:
      ! `class` must be a single string, not a character vector.

# can check with actual class

    Code
      expect_s7_class(Foo(), class = Bar)
    Condition
      Error:
      ! Expected `Foo()` to inherit from <Bar>.
      Actual class: <Foo>

---

    Code
      expect_s7_class(Baz(), class = Bar)
    Condition
      Error:
      ! Expected `Baz()` to inherit from <Bar>.
      Actual class: <Baz>/<Foo>

# informative failure if not S7

    Code
      expect_s7_class(x, Foo)
    Condition
      Error:
      ! Expected `x` to be an S7 object.
      Actual OO type: S3.

# expect_s7_class validates its inputs

    Code
      expect_s7_class(1, 1)
    Condition
      Error in `expect_s7_class()`:
      ! `class` must be an S7 class object, not the number 1.

