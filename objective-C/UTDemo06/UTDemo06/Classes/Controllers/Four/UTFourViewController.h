//
//  UTFourViewController.h
//  UTDemo06
//
//  Created by Hivan Du on 13-6-16.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UTBaseViewController.h"

@interface UTFourViewController : UIViewController <UIWebViewDelegate>
{
    UIWebView *_webView;
    UIActivityIndicatorView *_activityIndicatorView;
}
@end