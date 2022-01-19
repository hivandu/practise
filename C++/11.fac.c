#include <stdio.h>

// int main() {
//     int n, temp=1;
//     while (~scanf("%d", &n)){
//         for(int i = 1; i<=n; i++) {
//             temp =  temp*i;
//         }
//     }
//     printf("%d\n", temp);
//     return 0;
// }


// 利用递归
int fac(int n) {
    if (n == 1) return 1;
    return n * fac(n - 1);
}


int main() {
    int n;
    while (~scanf("%d", &n)) {
        printf("fac(%d) = %d\n", n, fac(n));
    }
    return 0;
}