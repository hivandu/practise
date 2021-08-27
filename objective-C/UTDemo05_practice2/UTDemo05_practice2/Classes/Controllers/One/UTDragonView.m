//
//  UTDragonView.m
//  UTDemo05_practice2
//
//  Created by Hivan Du on 13-6-5.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTDragonView.h"

@implementation UTDragonView

#pragma mark - view lifecycle methods

@synthesize delegate = _delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 80, 80)];
        _imageView.backgroundColor = [UIColor clearColor];
        _imageView.image = [UIImage imageNamed:@"dragon.png"];
        [self addSubview:_imageView];
        [_imageView release];
        
        UIButton *retreatButton = [UIButton buttonWithType:UIButtonTypeCustom];
        retreatButton.frame = CGRectMake(10, 100, 60, 60);
        [retreatButton setBackgroundImage:[UIImage imageNamed:@"retreat.png"] forState:UIControlStateNormal];
        [retreatButton addTarget:self action:@selector(retreatButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:retreatButton];
        
        UIButton *forwardButton = [UIButton buttonWithType:UIButtonTypeCustom];
        forwardButton.frame = CGRectMake(240, 100, 60, 60);
        [forwardButton setBackgroundImage:[UIImage imageNamed:@"forward.png"] forState:UIControlStateNormal];
        [forwardButton addTarget:self action:@selector(forwardButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:forwardButton];
        
    }
    return self;
}

#pragma mark - Custom methods

- (void)retreatButtonClicked:(id)sender
{
    CGFloat x = _imageView.frame.origin.x;
    if ( x > 0) {
        _imageView.frame = CGRectMake(x-10, 10, 80, 80);
    }
    if (_delegate && [(NSObject *) _delegate respondsToSelector:@selector(retreatButtonClicked:)]) {
        [_delegate retreatButtonClicked:self];
    }
}

- (void)forwardButtonClicked:(id)sender
{
    CGFloat x = _imageView.frame.origin.x;
    if ( x < 240 ){
        _imageView.frame = CGRectMake(x+10, 10, 80, 80);
    }
    if (_delegate && [(NSObject *) _delegate respondsToSelector:@selector(forwardButtonClicked:)]) {
        [_delegate forwardButtonClicked:self];
    }
}

#pragma mark - memory managment methods

- (void)dealloc
{
    [super dealloc];
}

@end
