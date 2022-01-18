#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// ​ 给定一个三角形或长方形的底和高（长和宽），求它的面积。
//  第一行输入一个字符，只可能是 𝑟 或 𝑡，𝑟 表示长方形，𝑡 表示三角形。
// 
// ​ 第二行为两个实数，𝑚 和 𝑛。分别对应三角形的底和高（长方形的长和宽）。（0.0≤𝑚,𝑛≤100.0）

int cube(double w, double h) {
    double s;
    s = w >= 0 && w <= 100 && h >= 0 && h <=100 ? w*h : 0;
    printf("%.2lf\n", s);
    return 0;
}

int trigon(double l, double h) {
    double s;
    s = l >= 0 && l <= 100 && h >= 0 && h <=100 ? (l*h)/2 : 0;
    printf("%.2lf\n", s);
    return 0;
}

int main() {
    double m, n, s;
    char str[12];
    scanf("%s", str);
    if (strcmp(str, "r") == 0) {
        scanf("%lf%lf", &m, &n);
        cube(m, n);
    } else if (strcmp(str, "t") == 0) {
        scanf("%lf%lf", &m, &n);
        trigon(m, n);
    } else {
        printf("wrong input\n");
    }
    return 0;
}