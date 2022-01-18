#include <stdio.h>


int isEven(int n) {
    int x = n, temp;
    while(x) {
       temp =  !((x%10)%2);
       if(temp == 1) return temp;
       x /= 10;
    }
    return 0;
}

int main() {
    int n;
    while(~scanf("%d", &n)){
        if(n < 1000 || n > 9999) return 0;
        printf("%s\n", isEven(n)?"YES":"NO");
    }
    return 0;
}