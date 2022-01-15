#include <stdio.h>

// 注水问题
int main() {
    double a, b, c, t, h;
    scanf("%lf%lf%lf%lf", &a, &b, &c, &t);
    double fa = 1/a, fb=1/b, fc = 1/c;
    h = (1 - (t*fa + t*fb)) / (fa+fb - fc) + t;
    printf("%.2lf\n", h);
    return 0;
}
