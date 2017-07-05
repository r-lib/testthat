#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

extern SEXP duplicate_(SEXP);
extern SEXP find_label_(SEXP, SEXP);
extern SEXP reassign_function(SEXP, SEXP, SEXP, SEXP);
extern SEXP run_catch_tests();

static const R_CallMethodDef CallEntries[] = {
    {"duplicate_",        (DL_FUNC) &duplicate_,        1},
    {"find_label_",       (DL_FUNC) &find_label_,       2},
    {"reassign_function", (DL_FUNC) &reassign_function, 4},
    {"run_catch_tests",   (DL_FUNC) &run_catch_tests,   0},
    {NULL, NULL, 0}
};

void R_init_testthat(DllInfo *dll)
{
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
