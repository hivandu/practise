#include <stdio.h>
#include <iostream>
using namespace std;

// 输入一个三位数，判断组成它的各个位上是否存在数字9。

int rev_num(int n) {
    int x = n, temp;
    if(100 > x || x > 999) return 0;
    while (x) {
        temp = x%10 == 9 ? 1 : 0;
        if(temp) return 1;
        x /= 10;
    }
    return temp;
}

int main() {
    int n;
    while (~scanf("%d", &n)){
        printf("%s\n", rev_num(n) ? "YES":"NO");
    }
    return 0;
}