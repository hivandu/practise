#include <stdio.h>
#include <math.h>

#define PI acos(-1)

int main() {
    double r, h, s, v, p = 3.14;
    scanf("%lf%lf", &r, &h);
    s = r*r*p;
    v = s * h;
    printf("%.2lf\n%.2lf\n",  s, v);
    return 0;
}