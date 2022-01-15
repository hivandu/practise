#include <stdio.h>

// 圆形面积和周长
int main() {
    double r, p = 3.14;
    double s, v, l;
    scanf("%lf", &r);
    l = 2*p*r;
    s = p*r*r;
    printf("%0.2lf\n", l);
    printf("%0.2lf\n", s);
    return 0;
}