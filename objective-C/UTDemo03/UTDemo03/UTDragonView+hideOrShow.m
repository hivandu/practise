//
//  UTDragonView+hideOrShow.m
//  UTDemo03
//
//  Created by Hivan Du on 13-5-26.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTDragonView+hideOrShow.h"

@implementation UTDragonView (hideOrShow)

-(void)hideOrShow
{
    _imageView.hidden = !_imageView.hidden;
}

@end
