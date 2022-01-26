/*
 * @Author: Hivan Du
 * @mail: doo@hivan.me
 * @LastEditors: Hivan Du
 * @LastEditTime: 2022-01-26 13:53:41
 */
#include <stdio.h>

int ex_gcd(int a, int b, int *x, int *y) { // 定义两个指针变量x, y
    if (!b) {
        *x = 1, *y = 0;
        return a;
    }
    // int xx, yy, ret = ex_gcd(b, a % b, &xx, &yy);
    // *x = yy;
    // *y = xx - a / b * yy;
    int ret = ex_gcd(b, a%b, y, x);
    *y -= a / b *(*x);
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