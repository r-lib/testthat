# expect_type checks typeof

    Expected `x` to have type 'double'.
    Actual type: 'integer'

# expect_type validates its inputs

    Code
      expect_type(1, c("integer", "double"))
    Condition
      Error in `expect_type()`:
      ! `type` must be a single string, not a character vector.

# expect_is checks class

    Expected `factor("a")` to inherit from `'character'`.
    Actual inheritance: `'factor'`

# expect_s3/s4_class fails if appropriate type

    Expected `x1` to be an S3 object.
    Actually is a base object.

---

    Expected `x2` to be an S3 object.
    Actually is a S4 object.

---

    Expected `x3` to be an S4 object.
    Actually is a S3 object.

# expect_s[34]_class can check not S3/S4

    Expected `factor()` to not be an S3 object.

---

    Expected `A()` to not be an S4 object.

# test_s4_class respects class hierarchy

    Expected `C()` to inherit from 'D'.
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

    Expected `x` to inherit from 'c'.
    Actual class: 'a'/'b'

---

    Expected `x` to inherit from 'c'/'d'.
    Actual class: 'a'/'b'

# test_s3_class can request exact match

    Expected `x` to have class 'a'.
    Actual class: 'a'/'b'

# expect_s4_class validates its inputs

    Code
      expect_s4_class(factor("a"), 1)
    Condition
      Error in `expect_s4_class()`:
      ! `class` must be a character vector or NA, not the number 1.

# expect_r6_class generates useful failures

    Expected `x` to be an R6 object.
    Actually is a base object.

# expect_r6_class validates its inputs

    Code
      expect_r6_class(1, c("Person", "Student"))
    Condition
      Error in `expect_r6_class()`:
      ! `class` must be a single string, not a character vector.

# can check with actual class

    Expected `Foo()` to inherit from <Bar>.
    Actual class: <Foo>

---

    Expected `Baz()` to inherit from <Bar>.
    Actual class: <Baz>/<Foo>

# expect_s7_class validates its inputs

    Code
      expect_s7_class(1, 1)
    Condition
      Error in `expect_s7_class()`:
      ! `class` must be an S7 class object, not the number 1.

