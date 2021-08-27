//
//  UTDragonView+hideOrShow.m
//  UTDemo05_practice
//
//  Created by Hivan Du on 13-6-3.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTDragonView+hideOrShow.h"

@implementation UTDragonView (hideOrShow)


-(void)hideOrShow
{
    _imageView.hidden = !_imageView.hidden;
}

@end
