//
//  UTSubViewController.m
//  UTDemo06
//
//  Created by Hivan Du on 13-6-16.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTSubViewController.h"

@implementation UTSubViewController

@synthesize backButtonTitle = _backButtonTitle;

#pragma mark - Application lifecycle methods

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
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    backButton.frame = CGRectMake(10, 140, 300, 40);
    if ([self.backButtonTitle length] >0 ) {
        [backButton setTitle:self.backButtonTitle forState:UIControlStateNormal];
    }else{
       [backButton setTitle:@"back" forState:UIControlStateNormal];
    }
    backButton.backgroundColor = [UIColor yellowColor];
//    [backButton setTitle:@"back" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(backButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];    
}

#pragma mark - Custom methods

- (void)backButtonClicked:(id)sender
{
    if (self.navigationController) {
//        [self.navigationController popToRootViewControllerAnimated:YES];
        [self.navigationController popViewControllerAnimated:YES];
//        [self.navigationController popToViewController:<#(UIViewController *)#> animated:<#(BOOL)#>]
    }else{
        [self dismissModalViewControllerAnimated:YES];
    }
}

#pragma mark - memory management methods

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)dealloc
{
    [super dealloc];
}


@end
