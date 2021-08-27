//
//  UTViewController.m
//  UTDemo02_practice
//
//  Created by Hivan Du on 13-5-13.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTViewController.h"
#import "UTPerson.h"
#import "UTAnimal.h"
#import "UTCalculator.h"
#import "UTBookCode.h"
#import "UTFraction.h"

@interface UTViewController ()

@end

@implementation UTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UTPerson *zhangsan = [[UTPerson alloc] initWithName:@"张三" age:20 address:@"上海"];
    [zhangsan sayMyInfo];
    [zhangsan release];
    
    UTPerson *lisi = [[UTPerson alloc] initWithName:@"李四" age:41 address:@"广州"];
    [lisi sayMyInfo];
    [lisi release];
    
    
    UTAnimal *sami = [[UTAnimal alloc] initWiteSpecies:@"蛇" name:@"Sami" age:5 color:@"黄" lenger:17];
    [sami sayMyInfo];
    [sami release];
    
    [UTPerson printMessage:@"hi,iOS!"];
    
    // 以下是计算器实现的代码
    UTCalculator *deskCalc = [[UTCalculator alloc] init];
    [deskCalc setAccumulator:100.0];
    NSLog(@"The result is %g", [deskCalc accumulator]);
    [deskCalc add: 200];
    NSLog(@"The result is %g", [deskCalc accumulator]);
    [deskCalc divide:15.0];
    NSLog(@"The result is %g", [deskCalc accumulator]);
    [deskCalc subtract: 10.0];
    NSLog(@"The result is %g", [deskCalc accumulator]);
    [deskCalc multiply:5];
    NSLog(@"The result is %g", [deskCalc accumulator]);
    
    
    // 以下为课本中的实例代码
    // P32 代码清单3-1
    int muerator = 1;
    int denominator = 3;
    NSLog(@"The fraction is %i/%i", muerator, denominator);
    
    // p33 代码清单3-2
    // 创建一个分数实例
    
    UTBookCode *myFraction = [[UTBookCode alloc] init];
    [myFraction setNumerator:1];
    [myFraction setDenominator:3];
    NSLog(@"The value of myFraction is:");
    [myFraction print];
    
    //p46 代码清单3-3
    //使用分数的程序-cant'd
    UTBookCode *frac1 = [[UTBookCode alloc] init];
    UTBookCode *frac2 = [[UTBookCode alloc] init];
    [frac1 setNumerator:2];
    [frac1 setDenominator:3];
    
    [frac2 setNumerator:3];
    [frac2 setDenominator:7];
    NSLog(@"First fraction is:");
    [frac1 print];
    NSLog(@"Second fraction is:");
    [frac2 print];
    
    //p50 代码清单3-4 访问实例变量的程序
    UTBookCode *myFraction2 = [[UTBookCode alloc] init];
    [myFraction2 setNumerator:1];
    [myFraction2 setDenominator:3];
    
    NSLog(@"The value of myFraction2 is: %i/%i", [myFraction2 numerator], [myFraction2 denominator]);
    
    // 书中代码main.m 部分
    //p147 代码清单7-4
//    UTFraction *aFraction = [[UTFraction alloc] init];
//    UTFraction *bFraction = [[UTFraction alloc] init];
//    [aFraction setTo:1 over:4];
//    [bFraction setTo:1 over:2];
//    
//    [[aFraction print];
//    NSLog(@"+");
//    [bFraction print];
//    NSLog(@"=");
//    
//    [aFraction add: bFraction];
//    
//    [aFraction reduce];
//    [aFraction print];
    
    // p149 代码清单 7-5
    UTFraction *aFraction = [[UTFraction alloc] init];
    UTFraction *bFraction = [[UTFraction alloc] init];
    
    UTFraction *resultFraction;
    
    [aFraction setTo:1 over:4];
    [bFraction setTo:1 over:2];
    
    [aFraction print];
    NSLog(@"+");
    [bFraction print];
    NSLog(@"=");
    
    resultFraction = [aFraction add: bFraction];
    [resultFraction print];
    
    
	// Do any additional setup after loading the view, typically from a nib.    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
