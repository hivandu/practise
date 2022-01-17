#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int n, cnt = 0;
    scanf("%d", &n);
    srand(time(0)); // 生成随机种子
    for (int i = 0; i < n; i++) {
        int val = rand() % 100;
        i && printf(" ");
        printf("%d", val);
        // if(val % 2) {
            // cnt ++;
        // }
        cnt += val & 1; // 等价于上方的if判断
    }
    printf("\n");
    printf("cnt : %d\n", cnt);
    return 0;
    int a = 0, b = 0;
    if((a++) && (b++)) {
        printf("true\n");
    } else {
        printf("false\n");
    }
    printf("a = %d, b = %d\n", a, b);
    if ((a++) || (b++)) {
        printf("true\n");
    } else {
        printf("false\n");
    }
    printf("a = %d, b = %d\n", a, b);
    return 0;
}