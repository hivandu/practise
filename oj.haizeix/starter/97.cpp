#include <stdio.h>

//  求和2
int main() {
    double n, sum;
    while (scanf("%lf", &n) != EOF) {
        sum = n*(1+n)/2;
        printf("%.0lf\n", sum);
    }
    return 0;
}