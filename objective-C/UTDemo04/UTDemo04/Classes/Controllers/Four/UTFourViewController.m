//
//  UTFourViewController.m
//  UTDemo04
//
//  Created by Hivan Du on 13-6-2.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTFourViewController.h"

@implementation UTFourViewController

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
    self.title = @"Four";
    _fourImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 640)];
    _fourImageView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:_fourImageView];
    [_fourImageView release];
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
