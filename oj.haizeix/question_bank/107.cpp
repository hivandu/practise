#include <stdio.h>

// ​ 如果一个数既是 7 的倍数又不能被 2 整除，那么我们称之为七的奇倍数。
// 
// ​ 输入一个正整数 𝑛，判断它是否是 7 的奇倍数。

int main() {
    int n;
    while (~scanf("%d", &n)) {
        if(n >= 0 && n <= 100) {
            int i = n%7 == 0 ? n/7 : 0;
            printf("%s\n",  i%2 != 0?"YES":"NO");
        }
    }
    return 0;
}