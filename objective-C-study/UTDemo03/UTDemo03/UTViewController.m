//
//  UTViewController.m
//  UTDemo03
//
//  Created by Hivan Du on 13-5-24.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTViewController.h"
#import "UTDragonView.h"
#import "UTDragonView+hideOrShow.h"

@implementation UTViewController

//- (void)retreatButtonClicked:(UTDragonView *)dragonView
//{
//    _infoLabel.text = @"后退";
//}

- (void)forwardButtonClicked:(UTDragonView *)dragonView
{
    _infoLabel.text = @"前进";
}

- (void)hideButtonClicked:(id)sender
{
    [_dragonView hideOrShow];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _dragonView = [[UTDragonView alloc] initWithFrame:CGRectMake(0, 0, 320, 180)];
    _dragonView.delegate = self;
    [self.view addSubview:_dragonView];
    [_dragonView release];
    
    _infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 400, 320, 60)];
    _infoLabel.backgroundColor = [UIColor cyanColor];
    _infoLabel.textAlignment = UITextAlignmentCenter;
    _infoLabel.numberOfLines = 0;
    _infoLabel.text = @"dragon's info";
    [self.view addSubview:_infoLabel];
    [_infoLabel release];
    
    UIButton *hideButton = [UIButton buttonWithType:UIButtonTypeCustom];
    hideButton.frame = CGRectMake(120, 200, 60, 60);
    [hideButton setBackgroundImage:[UIImage imageNamed:@"hidden.png"] forState:UIControlStateNormal];
    [hideButton addTarget:self action:@selector(hideButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:hideButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
