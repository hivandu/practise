//
//  UTAnimal.m
//  UTDemo02_practice
//
//  Created by Hivan Du on 13-5-13.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

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
