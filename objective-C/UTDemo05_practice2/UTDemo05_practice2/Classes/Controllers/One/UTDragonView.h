//
//  UTDragonView.h
//  UTDemo05_practice2
//
//  Created by Hivan Du on 13-6-5.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UTBaseViewController.h"
#import "UTDragonViewDelegate.h"

@interface UTDragonView : UIView
{
    UIImageView *_imageView;
    id<UTDragonViewDelegate> _delegate;
}

@property (nonatomic, assign) id<UTDragonViewDelegate> delegate;

@end
