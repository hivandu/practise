//
//  UTPerson.h
//  UTDemo02_practice
//
//  Created by Hivan Du on 13-5-13.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

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
