//
//  UTBookCode.m
//  UTDemo02_practice
//
//  Created by Hivan Du on 13-5-13.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

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

- (int) numerator
{
    return numerator;
}

- (int) denominator
{
    return denominator;
}

- (double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator / denominator;
    }else{
        return NAN;
    }
}

- (void) dealloc
{
    [super dealloc];
}

@end
