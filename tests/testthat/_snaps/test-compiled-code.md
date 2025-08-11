# get_routine() fails when no routine exists

    Code
      get_routine("utils", "no_such_routine")
    Condition
      Error in `get_routine()`:
      ! Failed to locate routine `no_such_routine` in package utils.

# validates inputs

    Code
      expect_cpp_tests_pass(123)
    Condition
      Error in `expect_cpp_tests_pass()`:
      ! `package` must be a single string, not the number 123.
    Code
      run_cpp_tests(123)
    Condition
      Error in `run_cpp_tests()`:
      ! `package` must be a single string, not the number 123.

# useful messaging

    Code
      use_catch(path)
    Message
      v Added C++ unit testing infrastructure.
      i Please ensure you have LinkingTo: testthat in your DESCRIPTION.
      i Please ensure you have Suggests: xml2 in your DESCRIPTION.

