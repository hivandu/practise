#include <stdio.h>

// 三角形
long long Triangle(long long n) {
    return n * (n+1) >> 1;
}

// 五边形
long long Pentagonal(long long n) {
    return n * (3 * n - 1) >> 1;
}

// 六边形
long long Heaxgonal(long long n) {
    return n * (2*n - 1);
}

long long binary_search(long long (*arr)(long long), long long n, long long x) {
    long long head = 1, tail = n, mid;
    while (head <= tail) {
        mid = (head + tail) >> 1;
        if (arr(mid) == x) return mid;
        if (arr(mid) < x) head = mid + 1;
        else tail = mid - 1;
    }
    return -1;
}

int main() {
    long long n = 143;
    while (1) {
        n++;
        long long temp = Heaxgonal(n);
        // 这个不需要判断, 因为是六边形数字一定是三角形数字
        // if(binary_search(Triangle, temp, temp) == -1) continue;
        if (binary_search(Pentagonal, temp, temp) == -1) continue;
        printf("%lld\n", temp);
        break;
    }
    return 0;
}