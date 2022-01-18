#include <stdio.h>

int calculate(double n) {
    double m;
    if ( n >= 15) {
        m = 15*6 + (n - 15) * 9;
    } else {
        m = n*6;
    }
    printf("%.2lf\n", m);
    return 0;
}

int main() {
    double n, m;

    scanf("%lf", &n);
    if(n < 0) return 0;
    calculate(n);
    return 0;
}