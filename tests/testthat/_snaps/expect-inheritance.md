# expect_type validates its inputs

    Code
      expect_type(1, c("integer", "double"))
    Condition
      Error in `expect_type()`:
      ! `type` must be a single string, not a character vector.

# expect_s[34]_class can check not S3/S4

    factor() is an S3 object

---

    A() is an S4 object

# test_s4_class respects class hierarchy

    C() inherits from 'C'/'A'/'B'/'list'/'vector' not 'D'.

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

    `x` inherits from 'a'/'b' not 'c'.

---

    `x` inherits from 'a'/'b' not 'c'/'d'.

# can check with actual class

    Foo() inherits from <Foo> not <Bar>.

---

    Baz() inherits from <Baz>/<Foo> not <Bar>.

# expect_s7_class validates its inputs

    Code
      expect_s7_class(1, 1)
    Condition
      Error in `expect_s7_class()`:
      ! `class` must be an S7 class object, not the number 1.

