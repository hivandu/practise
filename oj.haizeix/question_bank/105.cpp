#include <stdio.h>

// 读入当前的相对空气湿度 𝐻，当相对空气湿度大于 55.4 时，就属于很可能会下雨的天气，判断今天是否是很可能会下雨的天气。
int main() {
    double h;
    while (~scanf("%lf", &h)) {
        int temp;
        temp = (h >= 0.0 && h <= 55.4) ? 1:0;
        printf("%s\n", !temp?"YES":"NO");
    }
    return 0;
}