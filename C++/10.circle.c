#include <stdio.h>
#include <inttypes.h>
#include <math.h>

// 判断回文整数
int rev_num(int n, int base) {
    if(n<0) return 0;

    int x = n, temp = 0;
    // while (x) {
        // temp = temp * 10 + x % 10;
        // x /= 10;
    // }

    // 判断二进制回文数字
    // while (x) {
        // temp = temp * 2 + x % 2;
        // x /= 2;
    // }

    while(x) {
        temp = temp * base + x % base;
        x /= base;
    }
    return temp == n;
}

int main() {
    int n;
    printf("int32_max = %d\n", INT32_MAX);
    scanf("%d", &n);
    printf("%s\n", rev_num(n, 10) ? "YES" : "NO");

    int x = n, digit = 0;
    do {
        x /= 10;
        digit += 1;
    } while (x);
    printf("%d has %d digits!\n", n, digit);
    printf("%d\n", n ? (int)floor(log10(n)) + 1 : 1);
    return 0;
}