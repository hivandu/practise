//
//  UTOneViewController.h
//  UTDemo05_practice2
//
//  Created by Hivan Du on 13-6-5.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UTBaseViewController.h"
#import "UTDragonView.h"

@interface UTOneViewController : UIViewController <UTDragonViewDelegate>
{
    UIImageView *_oneImageView;
    UILabel *_infolabel;
    UTDragonView *_dragonView;
}
@end
