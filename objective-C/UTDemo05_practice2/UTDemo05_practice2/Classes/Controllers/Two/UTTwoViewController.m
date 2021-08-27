//
//  UTTwoViewController.m
//  UTDemo05_practice2
//
//  Created by Hivan Du on 13-6-5.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTTwoViewController.h"

@implementation UTTwoViewController

#pragma mark - View lifecycle methods

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Two";
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    bgImageView.backgroundColor = [UIColor clearColor];
    bgImageView.image = [UIImage imageNamed:@"bg2.png"];
    [self.view addSubview:bgImageView];
    [bgImageView release];
    
    _infolabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 307, 320, 60)];
    _infolabel.backgroundColor = [UIColor brownColor];
    _infolabel.textAlignment = UITextAlignmentCenter;
    _infolabel.numberOfLines = 0;
    _infolabel.text = @"This is Two tabBar";
    [self.view addSubview:_infolabel];
    [_infolabel release];

}


#pragma mark - Memory managment methods


@end
