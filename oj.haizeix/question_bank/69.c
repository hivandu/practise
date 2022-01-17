#include <stdio.h>

// 开学考试2: 日期判断

int check(int y, int m, int d) {
    if (m<1 || m > 12 || d < 1 || d > 31) return 0;
    int month[13] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30};
    if (y % 4 == 0 && y % 100 || y % 400 == 0) month[2] += 1;
    return d <= month[m];
}

int main() {
    int year, mon, day;
    scanf("%d%d%d", &year, &mon, &day);

    printf("%s\n", check(year,mon,day)? "YES":"NO");

    return 0;
}