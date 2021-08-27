//
//  UTFraction.m
//  UTDemo02_practice
//
//  Created by Hivan Du on 13-5-13.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTFraction.h"

@implementation UTFraction

-(void) print
{
    NSLog(@"%i/%i", _numerator, _denominator);
}

-(double) convertToNum
{
    if (_denominator != 0) {
        return (double) _numerator / _denominator;
    }else{
        return NAN;
    }
}

-(void) setTo: (int) n over: (int) d
{
    _numerator = n;
    _denominator = d;
}

//-(void) add:(UTFraction *) f
//{
//    _numerator = _numerator *f.denominator + _denominator * f.numerator;
//    _denominator = _denominator * f.denominator;
//}

- (void) reduce
{
    int u = _numerator;
    int v = _denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    _numerator /= u;
    _denominator /= u;
}

//-(void) add: (UTFraction *)f
//{
//    _numerator = _numerator * f.denominator + _denominator * f.numerator;
//    _denominator = _denominator * f.denominator;
//    
//    [self reduce];
//}

- (void) add: (UTFraction *)f
{
    
}


-(void) dealloc
{
    [super dealloc];
}

@end
