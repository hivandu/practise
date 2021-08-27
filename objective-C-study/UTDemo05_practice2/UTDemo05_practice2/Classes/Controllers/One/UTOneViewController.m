//
//  UTOneViewController.m
//  UTDemo05_practice2
//
//  Created by Hivan Du on 13-6-5.
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
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    pushButton.frame = CGRectMake(10, 10, 300, 40);
    UIImage *blueButtonBGImage = [UIImage imageNamed:@"blueButton.png"];
    [pushButton setBackgroundImage:blueButtonBGImage forState:UIControlStateNormal];
    [pushButton setTitle:@"push" forState:UIControlStateNormal];
    [pushButton setTitle:@"clicked!!!!" forState:UIControlStateHighlighted];
    [pushButton addTarget:self action:@selector(pushButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    
//    
//    _infolabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 307, 320, 60)];
//    _infolabel.backgroundColor = [UIColor cyanColor];
//    _infolabel.textAlignment = UITextAlignmentCenter;
//    _infolabel.numberOfLines = 0;
//    _infolabel.text = @"This is One tabBar";
//    [self.view addSubview:_infolabel];
//    [_infolabel release];
//    
//    _dragonView = [[UTDragonView alloc] initWithFrame:CGRectMake(0, 0, 320, 180)];
//    _dragonView.delegate = self;
//    [self.view addSubview:_dragonView];
//    [_dragonView release];
    
}

#pragma mark - Custom methods

- (void)pushButtonClicked:(UIButton *)button
{
    
}

- (void)retreatButtonClicked:(UTDragonView *)dragonView
{
    _infolabel.text = @"后退";
}

- (void)forwardButtonClicked:(UTDragonView *)dragonView
{
    _infolabel.text = @"前进";
}

#pragma mark - Memory managment methods

@end
