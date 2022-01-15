#include <stdio.h>
#include <math.h>

int main() {
    int begin, n, s;
    scanf("%d%d", &begin, &n);
    if(begin <= 0) {
        s = 0;
    } else {
        if(begin&1){
           s = begin + 1;
        } else {
           s = begin;
        }
    }
    for(int i = 0; i < n; i++ ){
        if(s%2 == 0){
            printf("%d\n", s);
        }
        s += 2;
    }   
    return 0;
}