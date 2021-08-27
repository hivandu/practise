//
//  UTDragonView.h
//  UTDemo03
//
//  Created by Hivan Du on 13-5-24.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UTDragonViewDelegate.h"

//@protocol UTDragonViewDelegate;

@interface UTDragonView : UIView
{
    UIImageView                 *_imageView;
    id<UTDragonViewDelegate>    _delegate;
}


@property (nonatomic, assign) id<UTDragonViewDelegate> delegate;

@end

//@protocol UTDragonViewDelegate <NSObject>
//
//@optional
//- (void)retreatButtonClicked:(UTDragonView *)dragonView;
//
//@required
//- (void)forwardButtonClicked:(UTDragonView *)dragonView;
//
//@end

