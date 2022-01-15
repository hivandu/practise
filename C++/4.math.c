#include <stdio.h>

int main() {
    int n, a= 3, b = 4;
    printf("a = %d, b = %d\n", a, b);
    // int temp = a;
    // a = b;
    // b = temp;
    a ^= b; // a' = a ^ b;
    b ^= a; // b = b ^ a' => b = b ^ a ^ b => b和b亦或为0;
    a ^= b; // a = b ^ b ^ a' => a = b ^ b ^ a ^ b;
    printf("swap: a = %d, b = %d\n", a, b);
    // ~scanf() == scanf() != EOF
    while (~scanf("%d", &n)) {
        printf("n = %d\n", n);
        if(n & 1) {
            printf("%d us odd\n", n);
        } else {
            printf("%d is even\n", n);
        }
    }
    return 0;
}