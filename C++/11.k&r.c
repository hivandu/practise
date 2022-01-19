#include <stdio.h>
int is_prime(x)

int x;
{
    for(int i = 2; i * i <= x; i++) {
        if (x % i == 0) return 0;
    }
    return 1;
}

int main() {
    int x;
    while(~scanf("%d", &x)) {
        printf("%d\n", is_prime(x));
    }
    return 0;
}