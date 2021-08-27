//
//  UTCalculator.m
//  UTDemo02_practice
//
//  Created by Hivan Du on 13-5-13.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

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
