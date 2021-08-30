//
//  UTOneViewController.h
//  UTDemo05_practice
//
//  Created by Hivan Du on 13-6-3.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UTBaseViewController.h"
#import "UTDragonView.h"

@interface UTOneViewController : UTBaseViewController <UTDragonViewDelegate>
{
    UIImageView *_oneImageView;
    UTDragonView *_dragonView;
    UILabel *_infolabel;
    UIImageView *_imageView;
}
@end
