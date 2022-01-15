#include <stdio.h>

// 计算BMI
int main() {
    double h, w;
    scanf("%lf%lf", &w, &h);
    double bmi;
    bmi = w/(h*h);
    printf("%0.2lf\n",bmi);
    return 0;    
}