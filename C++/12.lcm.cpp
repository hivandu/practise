/*
 * @Descripttion: 
 * @version: 
 * @Author: Hivan Du
 * @mail: doo@hivan.me
 * @Date: 2022-01-20 15:21:03
 * @LastEditors: Hivan Du
 * @LastEditTime: 2022-01-20 16:17:31
 */
#include <stdio.h>

// 最小公倍数
int gcd(int a, int b) {
    return (b? gcd(b, a%b):a);
}

int main() {
    int a, b, c;
    while(~scanf("%d%d", &a, &b )) {
        c = gcd(a, b);
        printf("gcd = %d, lcm = %d\n", gcd(a, b), a*b/gcd(a, b));
    }
    return 0;
}