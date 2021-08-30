//
//  UTViewController.h
//  UTDemo03
//
//  Created by Hivan Du on 13-5-24.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UTDragonViewDelegate.h"

@interface UTViewController : UIViewController <UTDragonViewDelegate>
{
    UILabel *_infoLabel;
    UTDragonView *_dragonView;
}

@end
