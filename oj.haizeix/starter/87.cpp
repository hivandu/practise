#include <stdio.h>

// 矩形的面积与周长
int main() {
    double a, b;
    scanf("%lf%lf", &a, &b);
    printf("%.2lf\n%.2lf\n", (a+b)*2, a*b);
    return 0;
}