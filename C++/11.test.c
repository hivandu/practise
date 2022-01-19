#include <stdio.h>

int f(int k, int b, int x) {
    return k * x + b;
}

int main() {
    int k, b;
    scanf("%d%d", &k, &b);
    for (int i = 1; i <= 100; ++i) {
        printf("f(%d) = %d\n", i, f(k, b, i));
    }
    return 0;
}