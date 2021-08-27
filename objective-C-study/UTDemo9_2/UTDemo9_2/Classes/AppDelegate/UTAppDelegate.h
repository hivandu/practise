//
//  UTAppDelegate.h
//  UTDemo9_2
//
//  Created by Hivan Du on 13-7-7.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UTLodingViewController.h"

@interface UTAppDelegate : UIResponder <UIApplicationDelegate>
{
    
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UTLodingViewController *loadingViewController;
@property (strong, nonatomic) UINavigationController *loginNavigationController;

- (void)loadLoadingView;
- (void)loadLoginView;
- (void)loadMainView;

@end
