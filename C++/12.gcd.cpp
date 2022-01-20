/*
 * @Descripttion: 
 * @version: 
 * @Author: Hivan Du
 * @mail: doo@hivan.me
 * @Date: 2022-01-20 14:15:22
 * @LastEditors: Hivan Du
 * @LastEditTime: 2022-01-20 15:20:45
 */
#include <stdio.h>

// 最大公约数
int gcd(int a, int b) {
    return (b ? gcd(b, a%b) : a);
}

int main() {
    int a, b;
    while (~scanf("%d%d", &a, &b)) {
        printf("gcd(%d, %d) = %d\n", a, b, gcd(a, b));
    }
    return 0;
}