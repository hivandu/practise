//
//  UTViewController.h
//  UTDemo03_delegate
//
//  Created by Hivan Du on 13-6-1.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UTDragonViewDelegate.h"
#import "UTDragonView.h"

@interface UTViewController : UIViewController <UTDragonViewDelegate>
{
    UTDragonView    *_dragonView;
    UILabel         *_infolabel;
}

@end
