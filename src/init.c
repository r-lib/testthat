#include <R.h>
#include <Rinternals.h>
#include "R_ext/Rdynload.h"

SEXP reassign_function(SEXP name, SEXP env, SEXP old_fun, SEXP new_fun);

static const R_CallMethodDef CallEntries[] = {
    {"reassign_function", (DL_FUNC) &reassign_function, 4},
    {"duplicate", (DL_FUNC) &duplicate, 1},
    {NULL, NULL, 0}
};


#include <Rversion.h>
void
R_init_testthat(DllInfo * dll)
{
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
#if defined(R_VERSION) && R_VERSION >= R_Version(2, 16, 0)
    R_forceSymbols(dll, TRUE);
#endif
}
