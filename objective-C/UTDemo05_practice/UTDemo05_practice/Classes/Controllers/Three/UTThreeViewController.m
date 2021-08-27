//
//  UTThreeViewController.m
//  UTDemo05_practice
//
//  Created by Hivan Du on 13-6-3.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTThreeViewController.h"
#import "UTDragonView+hideOrShow.h"
#import "UTDragonView.h"

@implementation UTThreeViewController

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
    self.title = @"Three";
    _dragonView = [[UTDragonView alloc] initWithFrame:CGRectMake(0, 0, 320, 180)];
    _dragonView.tag = 100;
    [self.view addSubview:_dragonView];
    [_dragonView release];
    
    UIButton *hideButton = [UIButton buttonWithType:UIButtonTypeCustom];
    hideButton.frame = CGRectMake(120, 200, 60, 60);
    [hideButton setBackgroundImage:[UIImage imageNamed:@"hidden.png"] forState:UIControlStateNormal];
    [hideButton addTarget:self action:@selector(hideButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:hideButton];
    [hideButton release];
}

- (void)retreatButtonClicked:(UTDragonView *)dragonView
{

}

- (void)forwardButtonClicked:(UTDragonView *)dragonView
{
    
}

- (void)hideButtonClicked:(id)sender
{
    [_dragonView hideOrShow];
}

#pragma mark - Memory management methods


@end
