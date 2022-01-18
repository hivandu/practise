#include <stdio.h>


int dateTest(int y, int m) {
    if(m < 1 || m > 12 || y < 1000 || y > 3000) return 0;
    int month[13] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    if ((y%4 == 0 && y % 100)|| y%400 == 0) month[2] += 1;
    printf("%d\n", month[m]);
    return 0;
}

int main() {
    int y, m;
    scanf("%d%d", &y, &m);
    dateTest(y, m);
    return 0;
}