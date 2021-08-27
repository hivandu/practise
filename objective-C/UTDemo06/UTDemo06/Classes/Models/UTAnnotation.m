//
//  UTAnnotation.m
//  UTDemo06
//
//  Created by Hivan Du on 13-6-30.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTAnnotation.h"

@implementation UTAnnotation

@synthesize coordinate  = _coordinate;
@synthesize title       = _title;
@synthesize subtitle    = _subtitle;
@synthesize index       = _index;

#pragma mark - menory management methos

- (void)dealloc
{
    self.title = nil;
    self.subtitle = nil;
    [super dealloc];
}

@end
