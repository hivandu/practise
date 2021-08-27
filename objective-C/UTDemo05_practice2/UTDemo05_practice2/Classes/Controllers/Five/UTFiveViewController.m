//
//  UTFiveViewController.m
//  UTDemo05_practice2
//
//  Created by Hivan Du on 13-6-5.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTFiveViewController.h"

@implementation UTFiveViewController

#pragma mark - view lifecycle methods

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
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    bgImageView.backgroundColor = [UIColor clearColor];
    bgImageView.image = [UIImage imageNamed:@"bg5.png"];
    [self.view addSubview:bgImageView];
    [bgImageView release];
    
    _infolabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 307, 320, 60)];
    _infolabel.backgroundColor = [UIColor grayColor];
    _infolabel.textAlignment = UITextAlignmentCenter;
    _infolabel.numberOfLines = 0;
    _infolabel.text = @"This is Five tabBar";
    [self.view addSubview:_infolabel];
    [_infolabel release];
}

#pragma mark - memory managment methods

@end
