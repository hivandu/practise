//
//  UTAppDelegate.m
//  UTDemo9_2
//
//  Created by Hivan Du on 13-7-7.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTAppDelegate.h"
#import "UTLoginViewController.h"
#import "UTUserInfoViewController.h"

@implementation UTAppDelegate

#pragma mark - Memory managment methods

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

#pragma mark - Custom methods

- (void)loadLoadingView
{
    self.loadingViewController = [[[UTLodingViewController alloc] initWithNibName:@"UTLodingViewController" bundle:nil]autorelease];
    
    self.window.rootViewController = self.loadingViewController;
}

- (void)loadLoginView
{
    
}

- (void)loadMainView
{
    
}

#pragma mark - Application lifecycle methods

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    
    // 生命周期重，第一步，加载主程序的时候加载
    [self loadLoadingView];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
