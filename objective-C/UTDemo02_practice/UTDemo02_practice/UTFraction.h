//
//  UTFraction.h
//  UTDemo02_practice
//
//  Created by Hivan Du on 13-5-13.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UTFraction : NSObject
{
    
}

@property int numerator, denominator;

- (void) print;
- (void) setTo: (int) n over: (int) d;
- (double) convertToNum;
- (void) add:(UTFraction *) f;
- (void) reduce;

@end
