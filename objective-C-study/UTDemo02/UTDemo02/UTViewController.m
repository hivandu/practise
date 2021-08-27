//
//  UTViewController.m
//  UTDemo02
//
//  Created by Hivan Du on 13-5-12.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTViewController.h"
#import "UTPerson.h"
#import "UTDragonView.h"


@interface UTViewController ()

@end

@implementation UTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UTDragonView *dragonView
    = [[UTDragonView alloc] initWithFrame:CGRectMake(0, 0, 320, 180)];
    [self.view addSubview:dragonView];
    [dragonView release];
    
//    UTPerson *zhangsan = [UTPerson alloc]; //内存分配，用于存放UTPerson
//    zhangsan = [zhangsan initWithName:@"张三" age:20 adress:@"上海"];
    UTPerson *zhangsan = [[UTPerson alloc] initWithName:@"张三" age:20 adress:@"上海"];
    [zhangsan sayMyInfo];
    [zhangsan release];
    
    
    UTPerson *lisi = [[UTPerson alloc] initWithName:@"李四" age:22 adress:@"广州"];
    [lisi sayMyInfo];
    
    [lisi setName:@"李二四"];
    [lisi setAge:10];
    [lisi setAddress:@"四川"];
    [lisi sayMyInfo];
    
    lisi.name = @"李四啊啊啊啊啊啊";
    
    NSLog(@"%@的年龄是%i", [lisi name], [lisi age]);
    
    [lisi release];
    
    [UTPerson printMessage:@"hi, iOS!"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
