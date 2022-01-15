#include <stdio.h>
#include <math.h>

int main() {
    int a;
    scanf("%d", &a);
    if(100<=a && a<=999) {
        int n = a/100;
        int m = (a%100)/10;
        int p = a%10;
        printf("%d\n%d\n%d\n",n,m,p);
    } else {
        printf("Wrong Number");
    }
    return 0;
}