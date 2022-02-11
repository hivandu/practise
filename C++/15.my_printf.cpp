/*
 * @Descripttion: 
 * @version: 
 * @Author: Hivan Du
 * @mail: doo@hivan.me
 * @Date: 2022-01-21 16:45:53
 * @LastEditors: Hivan Du
 * @LastEditTime: 2022-01-30 13:23:20
 */
#include <stdio.h>
#include <stdarg.h>
#include <inttypes.h> 

int output_num(int x, int digit) {
    int cnt = 0;
    while (digit--) {
        putchar(x % 10 + 48), ++cnt;
        x /= 10;
    }
    return cnt;
}

int reverse_num(int x, int *temp) {
    int cnt = 0;
    do {
        *temp = *temp * 10 + x % 10;
        x /= 10;
        cnt++;
    } while (x);
    return cnt;
}

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
                        uint32_t xx = 0; // 定义一个xx用于存储更大值
                        if (x < 0) PUTC('-'), xx = -x; // 输出负数
                        else xx = x;
                        int x1 = xx / 100000, x2 = xx % 100000; // 前5位为x1, 后五位为x2
                        int temp1 = 0, temp2 = 0;
                        int digit1 = reverse_num(x1, &temp1);
                        int digit2 = reverse_num(x2, &temp2);

                        int digit3 = 0;

                        if (x1) digit3 = 5 - digit2;
                        else digit1 = 0;
                        cnt += output_num(temp1, digit1);
                        cnt += output_num(0, digit3);
                        cnt += output_num(temp2, digit2);
                    } break;
                    case 's': { // 增加%s的值获取
                        const char *str = va_arg(arg, const char *);
                        for (int i = 0; str[i]; i++) {
                            PUTC(str[i]);
                        }
                    }
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
    printf("int (a) = %d\n", 100500);
    my_printf("int (a) = %d\n", 100500);
    printf("int (a) = %d\n", 105000);
    my_printf("int (a) = %d\n", 105000);
    return 0;
}