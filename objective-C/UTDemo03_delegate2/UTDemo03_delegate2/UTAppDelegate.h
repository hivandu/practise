//
//  UTAppDelegate.h
//  UTDemo03_delegate2
//
//  Created by Hivan Du on 13-6-2.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UTViewController;

@interface UTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UTViewController *viewController;

@end
