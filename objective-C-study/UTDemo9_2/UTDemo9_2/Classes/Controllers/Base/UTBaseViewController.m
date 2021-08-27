//
//  UTBaseViewController.m
//  UTDemo9_2
//
//  Created by Hivan Du on 13-7-7.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTBaseViewController.h"

@implementation UTBaseViewController

#pragma mark - View lifecycle methods

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
//    初始化的结构， 先去调用父类的，如果有，再初始化
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - memory lifecycle methods

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