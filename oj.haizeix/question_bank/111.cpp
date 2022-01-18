#include <stdio.h>

// 小明要乘出租车去奶奶家。出租车计价方案为：3 公里内（含）的起步价是 13 元，超过 3 公里之后按 2.3 元 / 公里，另外在整个乘车途中另加 1 元燃油附加费。已知小明到奶奶家的路程为 𝑁 公里，请计算出租车费用是多少元。
int cal(double n) {
    double m;
    m = n > 3 ? 13 + (n - 3)*2.3 : 13;
    printf("%g\n", m+1);
    return 0;
}

int main() {
    double n;
    scanf("%lf", &n);
    if(n < 1) return 0;
    cal(n);
    return 0;
}