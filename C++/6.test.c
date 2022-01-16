#include <stdio.h>

int main() {
    int n;
    char str[100] = {0};
    while (~scanf("%d", &n)) {
        if(!n) {
            printf("FOOLISH\n");
        } else if(n < 60) {
            printf("FAIL\n");
        } else if(n<=75) {
            printf("MIDDLE\n");
        } else if(n <= 100){
            printf("GOOD\n");
        } else {
            printf("Wrong number\n");
        }
        printf("%s", str);
    }
    return 0;
}