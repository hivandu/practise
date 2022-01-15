#include <stdio.h>

// 计算复利
int main() {
    int mon = 6;
    double money, total = 0, rate = 0.00417;
    scanf("%lf", &money);

    for(int i=1; i< mon+1; i++) {
        if(i == 1) {
            total = money*(1+rate);
        }else{
            total = (money+total)*(1+rate);
        }
    }

    printf("$%.2lf\n", total);
    return 0;
}