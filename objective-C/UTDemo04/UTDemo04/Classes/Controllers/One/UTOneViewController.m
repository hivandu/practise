//
//  UTOneViewController.m
//  UTDemo04
//
//  Created by Hivan Du on 13-6-2.
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
    
    UIImageView *bgImageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    bgImageview.backgroundColor = [UIColor clearColor];
    bgImageview.image = [UIImage imageNamed:@"bg1.png"];
    [self.view addSubview:bgImageview];
    [bgImageview release];
    
    UTDragonView *dragonView = [[UTDragonView alloc] initWithFrame:CGRectMake(0, 0, 320, 180)];
    [self.view addSubview:dragonView];
    [dragonView release];
    
//    [self.view sendSubviewToBack:<#(UIView *)#>]
//    [self.view bringSubviewToFront:<#(UIView *)#>]
    
//    _oneImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 640)];
//    _oneImageView.backgroundColor = [UIColor greenColor];
//    [self.view addSubview:_oneImageView];
//    [_oneImageView release];
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
