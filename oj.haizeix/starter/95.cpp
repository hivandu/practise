#include <stdio.h>

// 交换2位数
int main() {
    int n, a, b;
    while (scanf("%d", &n) != EOF) {
        a = n/10;
        b = n%10;
        printf("%d\n", b*10 + a);
    }
    return 0;
}