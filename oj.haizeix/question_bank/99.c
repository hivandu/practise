#include <stdio.h>
#include <math.h>

int main() {
    double a, v, l;
    scanf("%lf%lf", &v, &a);
    l = (v*v)/(2*a);
    printf("%.2lf\n", l);
    return 0;
}