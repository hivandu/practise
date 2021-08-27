//
//  UTPerson.m
//  UTDemo02
//
//  Created by Hivan Du on 13-5-12.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTPerson.h"

@implementation UTPerson

//@synthesize name = _name;
//@synthesize age = _age;
//@synthesize address = _address;

- (id)initWithName:(NSString *)name age:(NSInteger)age adress:(NSString *)address
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

//- (void)setName:(NSString *)name
//{
//    if (_name) {
//        [_name release];
//    }
//    _name = [name copy];
//}
//
//-(void)setAge:(NSInteger)age
//{
//    _age = age;
//}
//
//- (NSString *)name
//{
//    return _name;
//}
//
//- (NSInteger)age
//{
//    return _age;
//}
//
//- (NSString *)address
//{
//    return _address;
//}
//
//- (void)setAddress:(NSString *)address
//{
//    if (_address) {
//        [_address release];
//    }
//    _address = [address copy];
//}

- (void)dealloc
{
    [_name release];
    [_address release];
    
    _name = nil;
    _address = nil;
    
    [super dealloc];
}

@end
