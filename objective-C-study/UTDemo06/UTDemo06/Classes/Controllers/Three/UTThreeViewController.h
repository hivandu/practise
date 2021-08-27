//
//  UTThreeViewController.h
//  UTDemo06
//
//  Created by Hivan Du on 13-6-16.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UTBaseViewController.h"

@interface UTThreeViewController : UIViewController <UIScrollViewDelegate>
{
    UIScrollView *_scrollView;
    UIPageControl *_pageControl;
    UIView  *_contentView;
    NSMutableArray *imageArray;
    NSTimer *myTimer;
}

@property(nonatomic,retain) IBOutlet UIScrollView *myScrollView;  

@property(nonatomic,retain) IBOutlet
UIPageControl *pageControl;

-(IBAction)pageTurn:(UIPageControl *)sender; 

@end