//
//  UTAppDelegate.m
//  UTDemo05
//
//  Created by Hivan Du on 13-6-2.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTAppDelegate.h"
#import "UTOneViewController.h"
#import "UTTwoViewController.h"
#import "UTThreeViewController.h"
#import "UTFourViewController.h"
#import "UTFiveViewController.h"

@implementation UTAppDelegate

#pragma  mark - Memory management methods

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

#pragma mark - Application lifecycle methods

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    [self loadMainView];
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

#pragma  mark - Custom methods

- (void)loadMainView
{
    UTOneViewController *oneViewController = [[UTOneViewController alloc] initWithNibName:@"UTOneViewController" bundle:nil];
    UINavigationController *oneNavigationController = [[UINavigationController alloc] initWithRootViewController:oneViewController];
    oneNavigationController.tabBarItem.title = @"One";
    oneNavigationController.tabBarItem.image = [UIImage imageNamed:@"one.png"];
    
    
    UTTwoViewController *twoViewController = [[UTTwoViewController alloc] initWithNibName:@"UTTwoViewController" bundle:nil];
    UINavigationController *twoNavigationController = [[UINavigationController alloc] initWithRootViewController:twoViewController];
    twoNavigationController.tabBarItem.title = @"Two";
    twoNavigationController.tabBarItem.image = [UIImage imageNamed:@"two.png"];
    
    UTThreeViewController *threeViewController = [[UTThreeViewController alloc] initWithNibName:@"UTThreeViewController" bundle:nil];
    UINavigationController *threeNavigationController = [[UINavigationController alloc] initWithRootViewController:threeViewController];
    threeNavigationController.tabBarItem.title = @"Three";
    threeNavigationController.tabBarItem.image = [UIImage imageNamed:@"three.png"];
    
    UTFourViewController *fourViewController = [[UTFourViewController alloc] initWithNibName:@"UTFourViewController" bundle:nil];
    UINavigationController *fourNavigationController = [[UINavigationController alloc] initWithRootViewController:fourViewController];
    fourNavigationController.tabBarItem.title = @"Four";
    fourNavigationController.tabBarItem.image = [UIImage imageNamed:@"four.png"];
    
    UTFiveViewController *fiveViewController = [[UTFiveViewController alloc] initWithNibName:@"UTFiveViewController" bundle:nil];
    UINavigationController *fiveNavigationController = [[UINavigationController alloc] initWithRootViewController:fiveViewController];
    fiveNavigationController.tabBarItem.title = @"Five";
    fiveNavigationController.tabBarItem.image = [UIImage imageNamed:@"five.png"];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = [NSArray arrayWithObjects:oneNavigationController,twoNavigationController,threeNavigationController,fourNavigationController, fiveNavigationController, nil];
    
    self.window.rootViewController = tabBarController;
    
    [tabBarController release];
    
    [oneViewController release];
    [oneNavigationController release];
    [twoViewController release];
    [twoNavigationController release];
    [threeViewController release];
    [threeNavigationController release];
    [fourViewController release];
    [fourNavigationController release];
    [fiveViewController release];
    [fiveNavigationController release];
    
    
}

@end
