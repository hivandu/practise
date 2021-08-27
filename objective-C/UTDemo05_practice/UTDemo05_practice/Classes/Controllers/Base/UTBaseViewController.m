//
//  UTBaseViewController.m
//  UTDemo05_practice
//
//  Created by Hivan Du on 13-6-3.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTBaseViewController.h"

@implementation UTBaseViewController

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
}

#pragma mark - Memory management methods


- (void)viewWillUnload
{
    [super viewWillUnload];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 6.0) {
        if (self.isViewLoaded && self.view.window == nil) {
            [self viewWillUnload];
            self.view = nil;
            [self viewDidUnload];
        }
    }
}

- (void)dealloc
{
    [super dealloc];
}

@end
