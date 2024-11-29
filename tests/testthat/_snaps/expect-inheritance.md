# expect_s[34]_class can check not S3/S4

    factor() is an S3 object

---

    A() is an S4 object

# test_s4_class respects class hierarchy

    C() inherits from 'C'/'A'/'B'/'list'/'vector' not 'D'.

# test_s3_class respects class hierarchy

    `x` inherits from 'a'/'b' not 'c'.

---

    `x` inherits from 'a'/'b' not 'c'/'d'.

# checks its inputs

    Code
      expect_s7_class(1, 1)
    Condition
      Error in `expect_s7_class()`:
      ! `class` must be an S7 class object, not the number 1.

# can check with actual class

    Foo() inherits from <Foo> not <Bar>.

---

    Baz() inherits from <Baz>/<Foo> not <Bar>.

