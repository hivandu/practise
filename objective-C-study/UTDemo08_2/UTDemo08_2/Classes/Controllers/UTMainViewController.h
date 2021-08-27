//
//  UTMainViewController.h
//  UTDemo08_2
//
//  Created by Hivan Du on 13-6-30.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UTMainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *_tabView;
}

@property (nonatomic, assign) UITableView *tabView;

@end
