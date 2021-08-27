//
//  UTOneViewController.m
//  UTDemo05_practice
//
//  Created by Hivan Du on 13-6-3.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTOneViewController.h"

@implementation UTOneViewController

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
    self.title = @"One";
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    bgImageView.backgroundColor = [UIColor clearColor];
    bgImageView.image = [UIImage imageNamed:@"bg1.png"];
    [self.view addSubview:bgImageView];
    [bgImageView release];
    
    _dragonView = [[UTDragonView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    _dragonView.delegate = self;
    [self.view addSubview:_dragonView];
    [_dragonView release];
    
    _infolabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 307, 320, 60)];
    _infolabel.backgroundColor = [UIColor cyanColor];
    _infolabel.textAlignment = UITextAlignmentCenter;
    _infolabel.numberOfLines = 0;
    _infolabel.text = @"dragon's info";
    [self.view addSubview:_infolabel];
    [_infolabel release];
    
    UIButton *retreatButton = [UIButton buttonWithType:UIButtonTypeCustom];
    retreatButton.frame = CGRectMake(10, 100, 60, 60);
    [retreatButton setBackgroundImage:[UIImage imageNamed:@"retreat.png"] forState:UIControlStateNormal];
    [retreatButton addTarget:self action:@selector(retreatButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:retreatButton];
    
    UIButton *forwardButton = [UIButton buttonWithType:UIButtonTypeCustom];
    forwardButton.frame = CGRectMake(240, 100, 60, 60);
    [forwardButton setBackgroundImage:[UIImage imageNamed:@"forward.png"] forState:UIControlStateNormal];
    [forwardButton addTarget:self action:@selector(forwardButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:forwardButton];
    
}



- (void)retreatButtonClicked:(UTDragonView *)dragonView
{
    _infolabel.text = @"后退";
}

- (void)forwardButtonClicked:(UTDragonView *)dragonView
{
    _infolabel.text = @"前进";
}

#pragma mark - Memory management methods


@end