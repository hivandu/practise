//
//  UTFiveViewController.m
//  UTDemo04
//
//  Created by Hivan Du on 13-6-2.
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
    _fiveImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 640)];
    _fiveImageView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:_fiveImageView];
    [_fiveImageView release];
    
}

#pragma  mark - Memory management methods

- (void)viewWillUnload
{
    [super viewWillUnload];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)dealloc
{
    [super dealloc];
}


@end
