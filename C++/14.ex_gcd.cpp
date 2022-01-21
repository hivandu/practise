/*
 * @Descripttion: 
 * @version: 
 * @Author: Hivan Du
 * @mail: doo@hivan.me
 * @Date: 2022-01-20 20:42:50
 * @LastEditors: Hivan Du
 * @LastEditTime: 2022-01-21 13:22:05
 */
#include <stdio.h>

// 定义两个指针变量x, y
int ex_gcd(int a, int b, int *x, int *y) {
    if (!b) {
        *x = 1, *y = 0;
        return a;
    }
    int xx, yy, ret = ex_gcd(b, a % b, &xx, &yy);
    printf("xx = %d, yy = %d\n", xx, yy);
    *x = yy;
    *y = xx - a / b * yy;
    return ret;
}

int main() {
    int a, b, x, y;
    while (~scanf("%d%d", &a, &b)) {
        printf("ex_gac(%d, %d) = %d\n", a, b, ex_gcd(a, b, &x, &y));
        printf("%d * %d + %d * %d = %d\n", a, x, b, y, a * x + b * y);
    }
    return 0;
}