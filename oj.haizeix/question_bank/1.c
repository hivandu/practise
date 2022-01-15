#include <stdio.h>
#include <math.h>

int main() {
    int a, b, c;
    double s = pow(10, 9) + 1;
    scanf("%d%d", &a, &b);
    if(a < s && b < s) {
        c = a + b;
    } else {
        printf("wrong");
    }
    printf("%d", c);
    return 0;
}