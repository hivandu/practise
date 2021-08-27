//
//  UTFiveViewController.m
//  UTDemo05_practice
//
//  Created by Hivan Du on 13-6-3.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTFiveViewController.h"

@implementation UTFiveViewController

#pragma mark - View lifecycle methods

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Five";
    _fiveImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    _fiveImageView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:_fiveImageView];
    [_fiveImageView release];
}

#pragma mark - Memory management methods

@end
