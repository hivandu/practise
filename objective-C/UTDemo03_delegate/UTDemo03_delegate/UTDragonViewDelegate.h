//
//  UTDragonViewDelegate.h
//  UTDemo03_delegate
//
//  Created by Hivan Du on 13-6-1.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UTDragonView;

@protocol UTDragonViewDelegate <NSObject>

-(void)retreatButtonClicked:(UTDragonView *)delegate;
-(void)forwardButtonClicked:(UTDragonView *)delegate;

@end
