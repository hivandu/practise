//
//  UTViewController.m
//  UTDemo03_delegate
//
//  Created by Hivan Du on 13-6-1.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTViewController.h"

@interface UTViewController ()

@end

@implementation UTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _dragonView = [[UTDragonView alloc] initWithFrame:CGRectMake(0, 0, 320, 180)];
    _dragonView.delegate = self;
    [self.view addSubview:_dragonView];
    [_dragonView release];
    
    _infolabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 400, 320, 60)];
    _infolabel.backgroundColor = [UIColor cyanColor];
    _infolabel.textAlignment = UITextAlignmentCenter;
    _infolabel.numberOfLines = 0;
    _infolabel.text = @"dragon's info";
    [self.view addSubview:_infolabel];
    [_infolabel release];
}

- (void)retreatButtonClicked:(UTDragonView *)delegate
{
    _infolabel.text = @"后退";
}

- (void)forwardButtonClicked:(UTDragonView *)delegate
{
    _infolabel.text = @"前进";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
