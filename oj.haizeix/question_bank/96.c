#include <stdio.h>
#include <math.h>

int main() {
    double a,b;
    scanf("%lf%lf", &a, &b);
    double s = floor(a*b);
    printf("%.0lf\n", s);
    return 0;
}