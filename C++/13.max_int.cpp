/*
 * @Descripttion: 
 * @version: 
 * @Author: Hivan Du
 * @mail: doo@hivan.me
 * @Date: 2022-01-20 17:08:33
 * @LastEditors: Hivan Du
 * @LastEditTime: 2022-01-20 17:13:08
 */
#include <stdio.h>
#include <inttypes.h>
#include <stdarg.h>

int max_int(int n, ...) {
    int ans = INT32_MIN;
    va_list arg;
    va_start(arg, n);
    while (n--) {
        int temp = va_arg(arg, int);
        if (temp > ans) ans = temp;
    }
    va_end(arg);
    return ans;
}

int main() {
    printf("%d\n", max_int(3, 1, 5, 3)); // 5
    printf("%d\n", max_int(2, 1, 3)); // 3
    printf("%d\n", max_int(3, 12, 11, 37, 56)); // 37
    return 0;
}