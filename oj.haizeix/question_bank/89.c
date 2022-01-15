#include <stdio.h>
#include <math.h>

int main() {
    int a;
    scanf("%d", &a);
    if(10<=a && a<=99) {
        int n = a/10;
        int m = a%10;
        printf("%d\n%d\n",n,m);
    } else {
        printf("Wrong Number");
    }
    return 0;
}