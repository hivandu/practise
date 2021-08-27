//
//  UTPerson.m
//  UTDemo02_practice
//
//  Created by Hivan Du on 13-5-13.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

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
