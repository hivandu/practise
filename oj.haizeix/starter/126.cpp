#include <stdio.h>

// 圆环面积
int main() {

    double r1, r2, p = 3.14;
    double s1, s2, sn;
    scanf("%lf%lf", &r1, &r2);
    s1 = p*(r1*r1);
    s2 = p*(r2*r2);
    sn = s1 - s2;
    printf("%.2lf\n", sn);
    return 0;
}