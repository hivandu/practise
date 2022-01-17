#include <stdio.h>

int main() {
    int n;
    while (~scanf("%d", &n)) {
        // if (n&1) {
            // printf("is even\n");
        // } else {
            // printf("is add\n");
        // }
        printf("%s\n", (n & 1) ? "is add" : "is even");
    }
    return 0;
}