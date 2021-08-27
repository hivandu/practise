# OC中建立的Class

UTPerson.h 
具体对象有关的用成员方法，具体对象无关的用类方法
UTPerson.m 解决做什么

`*_name` `*`代表的是指针变量

`-` 表示成员函数 ，有返回值，调用的时候一定是具体的对象。

`+` 没有返回值，类函数，与成员无关，可以用类名称调用。

`id`是若类型，可以表示任意一个对象类型。

具体对象有关的用成员方法，具体对象无关的用类方法

`unrecognized` 调用了一个不存在的方法


# 课后练习

## `UTAnimal.h`
    
    #import <Foundation/Foundation.h>

    @interface UTAnimal : NSObject
    {
        NSString    *_species;
        NSString    *_name;
        NSInteger   _age;
        NSString    *_color;
        NSInteger   _lenger;
    }

    -(id)initWiteSpecies:(NSString *)species name:(NSString *)name age:(NSInteger)age color:(NSString *)color lenger:(NSInteger)lenger;
    -(void)sayMyInfo;
    +(void)printMessage:(NSString *)message;

    @end

## `UTAnimal.m`

    #import "UTAnimal.h"

    @implementation UTAnimal

    -(id)initWiteSpecies:(NSString *)species name:(NSString *)name age:(NSInteger)age color:(NSString *)color lenger:(NSInteger)lenger
    {
        self = [super init];
        if (self) {
            _species = [species copy];
            _name = [name copy];
            _age = age;
            _lenger = lenger;
            _color = [color copy];
        }
        return self;
    }

    - (void)sayMyInfo
    {
        NSLog(@"这个%@色的%@叫%@, 今年%i岁, 体长%i米。", _color, _species, _name, _age, _lenger);
    }

    + (void)printMessage:(NSString *)message
    {
        NSLog(@"%@", message);
    }

    -(void)dealloc
    {
        [_species release];
        [_name release];
        [_color release];
        
        _species = nil;
        _color = nil;
        _name = nil;
        
        [super dealloc];
    }

    @end

## `UTPerson.h`

    #import <Foundation/Foundation.h>

    @interface UTPerson : NSObject
    {
        NSString *_name;
        NSInteger _age;
        NSString *_address;
    }

    -(id)initWithName:(NSString *)name age:(NSInteger)age address:(NSString *)address;
    -(void)sayMyInfo;
    +(void)printMessage:(NSString *)message;

    @end

## `UTPerson.m`

    #import "UTPerson.h"

    @implementation UTPerson
    - (id)initWithName:(NSString *)name age:(NSInteger)age address:(NSString *)address
    {
        self = [super init];
        if (self) {
            _name = [name copy];
            _age = age;
            _address = [address copy];
        }
        return self;
    }
    - (void)sayMyInfo
    {
        NSLog(@"我叫 %@, 今年 %i岁, 来自 %@", _name, _age, _address);
    }

    +(void)printMessage:(NSString *)message
    {
        NSLog(@"%@", message);
    }

    - (void)dealloc
    {
        [_name release];
        [_address release];
        
        _name = nil;
        _address = nil;
        
        [super dealloc];
    }
    @end


## `UTCalculator.h`

    #import <Foundation/Foundation.h>

    @interface UTCalculator : NSObject
    {
        double _accumulator;
    }

    -(double) accumulator;
    -(void) setAccumulator:(double) value;
    -(void) clear;
    -(void) add: (double) value;
    -(void) subtract: (double) value;
    -(void) multiply: (double) value;
    -(void) divide: (double) value;

    @end


## `UTCalculator.m`

#import "UTCalculator.h"

    @implementation UTCalculator

    - (void) setAccumulator:(double)value
    {
        _accumulator = value;
    }

    - (void) clear
    {
        _accumulator = 0;
    }

    - (double) accumulator
    {
        return _accumulator;
    }

    - (void) add:(double) value
    {
        _accumulator += value;
    }

    - (void) subtract:(double)value
    {
        _accumulator -= value;
    }

    - (void) multiply:(double)value
    {
        _accumulator *= value;
    }

    - (void) divide: (double) value
    {
        _accumulator /= value;
    }

    - (void)dealloc
    {
        [super dealloc];
    }
    @end


## `UTBookCode.h`

    #import <Foundation/Foundation.h>

    @interface UTBookCode : NSObject
    {
        int numerator;
        int denominator;
    }

    - (void) print;
    - (void) setNumerator:(int) n;
    - (void) setDenominator: (int) d;

    @end

## `UTBookCode.m`

    #import "UTBookCode.h"

    @implementation UTBookCode

    - (void) print
    {
        NSLog(@"%i/%i", numerator, denominator);
    }

    - (void) setNumerator:(int)n
    {
        numerator = n;
    }

    - (void) setDenominator:(int)d
    {
        denominator = d;
    }

    - (void) dealloc
    {
        [super dealloc];
    }

    @end


## `UTViewController.m`

    #import "UTViewController.h"
    #import "UTPerson.h"
    #import "UTAnimal.h"
    #import "UTCalculator.h"
    #import "UTBookCode.h"

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
        
        // p33 代码清单
        // 创建一个分数实例
        
        UTBookCode *myFraction = [[UTBookCode alloc] init];
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        NSLog(@"The value of myFraction is:");
        [myFraction print];

        // ** 为什么这个地方不能写成
        // ** NSLog(@"The value of myFraction is:", [myFraction print]);
        
      // Do any additional setup after loading the view, typically from a nib.
         
    }

    - (void)didReceiveMemoryWarning
    {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
    }

    @end


在`UTViewController.m`中，调用的都是`.h`文件，而不是`m`文件，那为什么方法可以调用呢？