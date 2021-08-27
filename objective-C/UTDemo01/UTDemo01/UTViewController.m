//
//  UTViewController.m
//  UTDemo01
//
//  Created by Hivan Du on 13-5-5.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTViewController.h"

@interface UTViewController ()

@end

@implementation UTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    第一个练习，熟悉变量类型
//    int integerVar = 100;
//    float floatingVar = 331.79;
//    double doubleVar = 8.44e+11;
//    char charVar = 'W';
//    
//    NSLog(@"integerVar = %i", integerVar);
//    NSLog(@"floatingVar = %f", floatingVar);
//    NSLog(@"doubleVar = %e", doubleVar);
//    NSLog(@"doubleVar = %g", doubleVar);
//    NSLog(@"charVar = %c", charVar);
    
    
    
//    第二个练习，熟悉优先级
//    int a = 100;
//    int b = 2;
//    int c = 25;
//    int d = 4;
//    int result;    
//    
//    result = a-b;
//    NSLog(@"a - b = %i",result);
//    
//    result = a + c;
//    NSLog(@"a + c = %i", result);
//    
//    result = a * b / c;
//    NSLog(@"a * b / c = %i", result);
//    
//    result = a - c / b;
//    NSLog(@"a-c/b = %i", result);
//    
//    NSLog(@"a + b - c * d = %i",a + b - c * d);


    
//    第三个练习
//    int a = 25;
//    int b = 2;
//    float c = 25.0;
//    float d = 2.0;
//    NSLog(@"6+a/5*b = %i",6+a/5*b );
//    NSLog(@"a/b*b = %i", a/b*b);
//    NSLog(@"c/d*d = %f", c/d*d);
//    NSLog(@"-a = %i", -a);

    
    
//    第四个练习：求模
//    
//    int a = 25, b = -5, c = 10, d = 7;
//    
//    NSLog(@"a %% b = %i", a % b);
//    NSLog(@"a %% c = %i", a % c);
//    NSLog(@"a %% d = %i", a % d);
//    NSLog(@"a /d * d + a %% d = %i", a / d * d + a % d);


    
//    第五个练习：浮点数和整数
//    float f1 = 123.125, f2;
//    int i1, i2 = -150;
//    
//    i1 = f1; // 浮点数到整数的转换
//    NSLog(@"%f assigned to an int produces %i", f1, i1);
//    f1 = i2; // 整数到浮点数的转换
//    NSLog(@"%i assigned to a float produces %f", i2, f1);
//    f1 = i2 / 1000; // 整数除以整数
//    NSLog(@"%i divided by 100 produces %f", i2, f1);
//    f2 = i2 / 100.0; // 整数除以浮点数
//    NSLog(@"%i divided by 100.0 produces %f", i2, f2);
//    f2 = (float) i2 / 100; // 类型强制转换运算符
//    NSLog(@"(float) %i divided by 100 produces %f", i2, f2);

    
//    char c, d;
//    c = 'd';
//    d = c;
//    NSLog(@"d = %c", d);

    
    
//    float c, f;
//    f = 27;
//    c = (f - 32) / 1.8;
//    NSLog(@"今天的温度是摄氏 %f 度", c);

    
    
//    int triangularNumber;
//    triangularNumber = 1+2+3+4+5+6+7+8;
//    NSLog(@"The triangularNumber is %i", triangularNumber);
    
    
//    int n, triangularNumber;
//    triangularNumber = 0;
//    for(n = 1; n <= 200; n = n+1)
//    {
//        triangularNumber += n;
//    }
//    
//    NSLog(@"The 200th triangular number is %i", triangularNumber);

    
//    int n, triangularNumber;
//    NSLog(@"TABLE OF TRIANGULAR NUMBERS");
//    NSLog(@"n Sum from 1 to n");
//    NSLog(@"-- -------");
//    triangularNumber = 0;
//    for(n = 1; n <= 10; ++n){
//        triangularNumber += n;
//        NSLog(@" %i      %i", n, triangularNumber);
//    }


    
    
//    int n, number, triangularNumber, counter;
//    for (counter = 1; counter <= 5; ++counter){
//        NSLog(@"what triangular number do you want?");
//        number = 20;
//        triangularNumber = 0;
//        
//        for(n = 1; n <= number; ++n){
//            triangularNumber += n;
//        }
//        NSLog(@"Triangular number %i is %i", number, triangularNumber);
//    }
    
    
    
    
//    int count = 1;
//    
//    while (count <= 5){
//        NSLog(@"%i", count);
//        ++count;
//    }
    
//    unsigned int u, v, temp;
//    NSLog(@"Please type in two nonnegative integers.");
//    
//    u = 104;
//    v = 1;
//    while (v != 0){
//        temp = u % v;
//        u = v;
//        v = temp;
//    }
//NSLog(@"Their greatest common divisor is %u", u);
    
//    int number, right_digit;
//    NSLog(@"Enter your number.");
//    number = 24680;
//    
//    while (number != 0) {
//        right_digit = number % 10;
//        NSLog(@"%i", right_digit);
//        number /= 10;
//    }
    
//    int number, right_digit;
//    NSLog(@"Enter your number.");
//    number = 2897;
//    
//    do{
//        right_digit = number % 10;
//        NSLog(@"%i", right_digit);
//        number /= 10;
//    }
//    while (number != 0);
    
    // 计算一个整数的绝对值
//    int number;
//    NSLog(@"Type in your number;");
//    number = 28238;
//    
//    if (number < 0) {
//        number = -number;
//    }
//    NSLog(@"The absolute value is %i", number);

    // 确定数字是偶数还是奇数的程序
//    int number_to_test, remainder;
//    number_to_test = 238780;
//    remainder = number_to_test % 2;
//    
//    if (remainder == 0) {
//        NSLog(@"The number is even.");
//    }
//    if (remainder != 0) {
//        NSLog(@"The number is odd.");
//    }
    
    // 确定数字是偶数还是奇数的程序(第二个版本）
//    int number_to_test, remainder;
//    NSLog(@"Enter your number to be tested:");
//    number_to_test = 273729;
//    
//    remainder = number_to_test % 2;
//    
//    if (remainder == 0) {
//        NSLog(@"The number is evern.");
//    }
//    else{
//        NSLog(@"The number is odd.");
//    }
    
    //确定一年是否是闰年
//    int year, rem_4, rem_100, rem_400;
//    NSLog(@"Enter the year to be tested:");
//    year = 1984;
//    rem_4 = year % 4;
//    rem_100 = year % 100;
//    rem_400 = year % 400;
//    if (rem_4 == 0 && rem_100 != 0 || rem_400 == 0) {
//        NSLog(@"It's a leap year.");
//    }else{
//        NSLog(@"Nope, it's not a leap year.");
//    }
    
    //实现正负函数的程序
//    int number, sign;
//    NSLog(@"Please type in a number: ");
//    number = 29723;
//    if (number < 0) {
//        sign = -1;
//    }else if (number == 0){
//        sign = 0;
//    }else{
//        sign = 1;
//    }
//    NSLog(@"Sign = %i", sign);
    
    // 对单个字符进行分类的程序
//    char c;
//    NSLog(@"Enter a single character: ");
//    c = 'B';
//    if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
//        NSLog(@"It's an alphabetic character.");
//    }else if (c >= '0' && c <= '9'){
//        NSLog(@"It's a digit.");
//    }else{
//        NSLog(@"It's a special character.");
//    }
    
    //生成素数表的程序
//    int p, d, isPrime;
//    for (p = 2; p <= 50; ++p) {
//        isPrime = 1;
//        for (d = 2; d < p; ++d) {
//            if (p % d == 0) {
//                isPrime = 0;
//            }
//        }
//        if (isPrime != 0) {
//            NSLog(@"%i", p);
//        }
//    }
    
    // 生成素数 第二个版本使用Bool类型和预定义的值
    int p, d;
    BOOL isPrime;
    
    
    for (p = 2; p <= 50; ++p) {
        isPrime = YES;
        for (d = 2; d < p; ++d) {
            if (p % d == 0) {
                isPrime = NO;
                break;
            }
        }
        if (isPrime == YES) {
            NSLog(@"%i", p);
        }
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
