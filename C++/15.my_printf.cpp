/*
 * @Descripttion: 
 * @version: 
 * @Author: Hivan Du
 * @mail: doo@hivan.me
 * @Date: 2022-01-21 16:45:53
 * @LastEditors: Hivan Du
 * @LastEditTime: 2022-01-21 19:42:43
 */
#include <stdio.h>
#include <stdarg.h>
#include <inttypes.h> 

// const: 常量修饰符
int my_printf(const char *frm, ...) {
// int my_printf(char * const frm, ...) { // char * const frm, const 放在*号后面, 代表frm的地址不可修改
    int cnt = 0;
    va_list arg;
    va_start(arg, frm);
    #define PUTC(a) putchar(a), ++cnt
    for (int i = 0; frm[i]; i++) {
        //  frm[i] = i< strlen(frm)
        // 最后一位为|0, |0 == 0, 所以可以如上写法
        // putchar(frm[i]), cnt++;
        switch (frm[i]) { // 判断输入变量
            case '%': {
                switch (frm[++i]) { // 判断第二位
                    case '%': PUTC(frm[i]); break;
                    case 'd': {
                        int x = va_arg(arg, int);
                        if (x < 0) PUTC('-'), x = -x; // 输出负数
                        int temp = 0, digit = 0;
                        do { // 为了输出0, 先执行再循环
                            temp = temp * 10 + x % 10;
                            x /= 10;
                            digit++; // 添加位数
                        } while (x);
                        while (digit--) { // 递减位数
                            PUTC(temp % 10 + '0');
                            temp /= 10;
                        }
                    } break;
                }
            } break;
            default: PUTC(frm[i]); break;
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
    printf("int(a) = %d\n", a);
    my_printf("int(a) = %d\n", a);
    printf("int(a) = %d\n", 0);
    my_printf("int(a) = %d\n", 0);
    printf("int(a) = %d\n", 1000);
    my_printf("int(a) = %d\n", 1000);
    printf("int(a) = %d\n", -123);
    my_printf("int(a) = %d\n", -123);
    printf("INT32_MAX = %d\n", INT32_MAX); // 2137383647 反转后 -> 7463847412, 存不下
    my_printf("INT32_MAX = %d\n", INT32_MAX);
    printf("INT32_MIN = %d\n", INT32_MIN);
    my_printf("INT32_MIN = %d\n", INT32_MIN);

    return 0;
}