## Check notes

There is one check note in this version:

 File ‘testthat/libs/testthat.so’:
    Found non-API calls to R: ‘SET_BODY’, ‘SET_CLOENV’, ‘SET_FORMALS’

The plan is to remove these calls in the next minor release. I have now informed the majority of users that these functions are going away.

## revdepcheck results

I did not check revdeps since the fixes are minor and should only decrease the number of errors.
