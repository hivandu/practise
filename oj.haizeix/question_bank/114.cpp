/*
 * @Descripttion: 
 * @version: 
 * @Author: Hivan Du
 * @mail: doo@hivan.me
 * @Date: 2022-01-22 13:29:43
 * @LastEditors: Hivan Du
 * @LastEditTime: 2022-01-22 13:50:07
 */
#include <stdio.h>
#include <stdarg.h>
#include <inttypes.h>

int main() {
    char s;
    int cnt = 0;
    while (~scanf("%c", &s)) {
        putchar(s % 10 + 48), ++cnt;
        s /= 10;
    }
    return 0;
}