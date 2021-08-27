//
//  UTDragonView.m
//  UTDemo04
//
//  Created by Hivan Du on 13-6-2.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTDragonView.h"

@implementation UTDragonView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 80, 80)];
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
        
//        self.backgroundColor = [UIColor greenColor];
        
    }
    return self;
}

- (void)retreatButtonClicked:(id)sender
{
    CGFloat x = _imageView.frame.origin.x;
    if ( x > 0) {
        _imageView.frame = CGRectMake(x-10, 10, 80, 80);
    }
    
}

- (void)forwardButtonClicked:(id)sender
{
    CGFloat x = _imageView.frame.origin.x;
    if ( x < 240) {
        _imageView.frame = CGRectMake(x+10, 10, 80, 80);
    }
}

- (void)dealloc
{
    [super dealloc];
}

@end
