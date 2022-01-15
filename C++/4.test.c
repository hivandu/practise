#include <math.h>
#include <stdio.h>

#define PI acos(-1)

int main() {
    double n;
    printf("请输入数字查看位数:");
    scanf("%lf", &n);
    double x = floor(log10(n)) + 1;
    printf("%.0lf的数字位数为: %.2lf\n", n, x);

    // 随堂练习 -1
    double a;
    printf("请输入数字计算立方根:");
    scanf("%lf", &a);
    printf("%.2lf的立方根为%.2lf\n", a, pow(a, 1.0/3));

    // 随堂练习 -2
    double c;
    printf("请输入一个角度值:");
    scanf("%lf", &c);
    printf("角度值%.4lf的弧度值为%.4lf\n", c, PI / 180.0 * c);
    return 0;
}