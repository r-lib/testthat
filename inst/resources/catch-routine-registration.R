# This dummy function definition is included with the package to ensure that
# 'tools::package_native_routine_registration_skeleton()' generates the required
# registration info for the 'run_catch_tests' symbol.
(function() {
  .Call("run_catch_tests", PACKAGE = "%s")
})
