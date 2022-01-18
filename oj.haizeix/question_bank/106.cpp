#include <stdio.h>

int main() {
    double n;
    while (~scanf("%lf", &n)) {
        if(n>=-100 && n <=100) {
            n = n>=0 ? n : -n;
        }
        printf("%g\n", n);
    }
    return 0;
}