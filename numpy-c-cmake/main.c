#include <stdio.h>
#include "sum.h"

int main() {
    int a = 5;
    int b = 3;
    printf("%d + %d = %d\n", a, b, sum(a, b));
    return 0;
}
