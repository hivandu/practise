//
//  UTDragonView.m
//  UTDemo05_practice
//
//  Created by Hivan Du on 13-6-3.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTDragonView.h"
#import "UTOneViewController.h"

@implementation UTDragonView

@synthesize delegate = _delegate;

#pragma mark - View lifecycle methods

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 80, 80)];
        _imageView.backgroundColor = [UIColor clearColor];
        _imageView.image = [UIImage imageNamed:@"dragon.png"];
        [self addSubview:_imageView];
        [_imageView release];
        
    }
    return self;
}

#pragma mark - 自定义方法

- (void)retreatButtonClicked:(id)sender
{
    CGFloat x = _imageView.frame.origin.x;
    if ( x > 0 ) {
        _imageView.frame = CGRectMake(x - 10, 10, 80, 80);
    }
//    if (_delegate && [(NSObject *)_delegate respondsToSelector:@selector(retreatButtonClicked:)]) {
//        [_delegate retreatButtonClicked:self];
//    }
}

- (void)forwardButtonClicked:(id)sender
{
    CGFloat x = _imageView.frame.origin.x;
    if ( x < 240 ) {
        _imageView.frame = CGRectMake(x+10, 10, 80, 80);
    }
    if (_delegate && [(NSObject *)_delegate respondsToSelector:@selector(forwardButtonClicked:)]) {
        [_delegate forwardButtonClicked:self];
    }
}

#pragma mark - Memory management methods

@end
