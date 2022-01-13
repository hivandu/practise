#include <stdio.h>

void cooperation() {
    int n, i=0, m, sum=0;
    scanf("%d", &n);
    while(n != 0) {
        m = n%10; // 得出正数的每一位数字
        sum += m;
        n/=10;
        i++;
    }
    printf("%d\n",sum);
}

int main() {
    cooperation();
    return 0;
}