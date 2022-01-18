#include <stdio.h>

int cooperation(int n) {
    int i, temp=0, m;
    while (n != 0) {
        m = n%10; // 得出正数的每一位数字
        temp += m;
        n /= 10;
        i++;
    }
    return temp;
}

int main() {
    int n;
    scanf("%d", &n);
    printf("%d\n", n<10000 ? cooperation(n): 0);
    return 0;
}