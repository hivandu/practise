/*
 * @Descripttion: 
 * @version: 
 * @Author: Hivan Du
 * @mail: doo@hivan.me
 * @Date: 2022-01-21 19:49:23
 * @LastEditors: Hivan Du
 * @LastEditTime: 2022-01-21 23:38:43
 */

#include <stdio.h>
#include <stdarg.h>

int my_printf(const char *frm, ...) {
    int cnt = 0;
    va_list arg;
    va_start(arg, frm);
    #define PUTC(a) putchar(a), ++cnt
    for(int i = 0; frm[i]; i++) {
        switch(frm[i]) {
            case '%': {
                switch(frm[++i]) {
                    case '%': PUTC(frm[i]); break;
                    case 'd': {
                        int x = va_arg(arg, int);
                        if (x < 0) PUTC('-'), x = -x; //输出负数
                        int temp = 0, digit = 0;
                        do {
                            temp = temp * 10 + x % 10;
                            x /= 10;
                            digit++;
                        } while(x);
                        while (digit--) {
                            PUTC(temp % 10 + 48);
                            temp /= 10;
                        }
                    } break;
                }
            } break;
            default:  PUTC(frm[i]); break;
        }
    }
    #undef PUTC
    va_end(arg);
    return cnt;
}


int main() {
    int a = 123;
    printf("Hello Simon\n");
    my_printf("Hello Simon\n");
    printf("printf int(a) = %d\n", a);
    my_printf("my_printf int(a) = %d\n", a);
    printf("printf int(a) = %d\n", 0);
    my_printf("my_printf int(a) = %d\n", 0);
    printf("printf int(a) = %d\n", 10000);
    my_printf("my_printf int(a) = %d\n", 10000);
    printf("printf int(a) = %d\n", -123);
    my_printf("my_printf int(a) = %d\n", -123);
    // printf("printf int32_max = %d\n", INT32_MAX);
    // my_printf("my_printf int32_max = %d\n", INT32_MAX);
    // printf("printf int32_min = %d\n", INT32_MIN);
    // my_printf("my_printf int32_min = %d\n", INT32_MIN);
    return 0;
}