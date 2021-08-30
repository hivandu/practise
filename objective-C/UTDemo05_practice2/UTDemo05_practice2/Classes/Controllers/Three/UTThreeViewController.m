//
//  UTThreeViewController.m
//  UTDemo05_practice2
//
//  Created by Hivan Du on 13-6-5.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTThreeViewController.h"

@implementation UTThreeViewController

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
    self.title = @"Three";
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    bgImageView.backgroundColor = [UIColor clearColor];
    bgImageView.image = [UIImage imageNamed:@"bg3.png"];
    [self.view addSubview:bgImageView];
    [bgImageView release];
    
    _infolabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 307, 320, 60)];
    _infolabel.backgroundColor = [UIColor greenColor];
    _infolabel.textAlignment = UITextAlignmentCenter;
    _infolabel.numberOfLines = 0;
    _infolabel.text = @"This is Three tabBar";
    [self.view addSubview:_infolabel];
    [_infolabel release];
}

#pragma mark - Memory managment methods


@end
