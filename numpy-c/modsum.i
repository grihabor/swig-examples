%module modsum
%{
#define SWIG_FILE_WITH_INIT
#include "sum.h"
%}

%include "numpy.i"

%init %{
import_array();
%}

%apply (int DIM1, int* IN_ARRAY1) {(int n, int* arr)};
%include "sum.h"

