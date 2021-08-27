//
//  UTBookCode.h
//  UTDemo02_practice
//
//  Created by Hivan Du on 13-5-13.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UTBookCode : NSObject
{
    int numerator;
    int denominator;
}

- (void) print;
- (void) setNumerator:(int) n;
- (void) setDenominator: (int) d;
- (int) numerator;
- (int) denominator;
- (double) convertToNum;

@end
