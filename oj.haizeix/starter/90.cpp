#include <stdio.h>

// 去数位2
// int main() {
    // char str[100] = {0};
    // scanf("%s", str);
    // printf("%c\n%c\n%c\n", str[0], str[1], str[2]);
    // return 0;
// }
// 
void cooperation() {
    int n, i=0, m, sum = 0;
    scanf("%d", &n);
    while(n != 0) {
        m = n%10;
        n/=10;
        printf("%d\n", m);
    }
}

int main() {
    cooperation();
    return 0;
}