//
//  UTFourViewController.m
//  UTDemo05_practice2
//
//  Created by Hivan Du on 13-6-5.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTFourViewController.h"

@implementation UTFourViewController

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
    self.title = @"Four";
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    bgImageView.backgroundColor = [UIColor clearColor];
    bgImageView.image = [UIImage imageNamed:@"bg4.png"];
    [self.view addSubview:bgImageView];
    [bgImageView release];
    
    _infolabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 307, 320, 60)];
    _infolabel.backgroundColor = [UIColor purpleColor];
    _infolabel.textAlignment = UITextAlignmentCenter;
    _infolabel.numberOfLines = 0;
    _infolabel.text = @"This is Four tabBar";
    [self.view addSubview:_infolabel];
    [_infolabel release];
}

#pragma mark - memory managment methods

@end
