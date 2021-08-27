//
//  UTCalculator.h
//  UTDemo02_practice
//
//  Created by Hivan Du on 13-5-13.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UTCalculator : NSObject
{
    double _accumulator;
}

-(double) accumulator;
-(void) setAccumulator:(double) value;
-(void) clear;
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end
