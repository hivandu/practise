//
//  UTDragonViewDelegate.h
//  UTDemo03
//
//  Created by Hivan Du on 13-5-26.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UTDragonView; //前项声明

@protocol UTDragonViewDelegate <NSObject>

@optional
- (void)retreatButtonClicked:(UTDragonView *)dragonView;

@required
- (void)forwardButtonClicked:(UTDragonView *)dragonView;

@end
