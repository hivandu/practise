//
//  UTThreeViewController.m
//  UTDemo06
//
//  Created by Hivan Du on 13-6-16.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTThreeViewController.h"

@implementation UTThreeViewController

#pragma mark - view lifecycle methods

@synthesize myScrollView, pageControl;

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
    self.title = @"Three";
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    bgImageView.backgroundColor = [UIColor clearColor];
    bgImageView.image = [UIImage imageNamed:@"bg3.png"];
    [self.view addSubview:bgImageView];
    [bgImageView release];
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(10, 10, 300, 300)];
    _scrollView.backgroundColor = [UIColor orangeColor];
    _scrollView.pagingEnabled = YES;
    _scrollView.delegate = self;
    _scrollView.showsHorizontalScrollIndicator = NO; //隐藏垂直和水平显示条
    _scrollView.contentSize = CGSizeMake(300 * 5, 300);
    _scrollView.maximumZoomScale = 3;
    _scrollView.minimumZoomScale = 0.5;
    [self.view addSubview:_scrollView];
    [_scrollView release];
    
    CGFloat width = _scrollView.frame.size.width;
    CGFloat height = _scrollView.frame.size.height;
    
    _contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300 * 5, 300)];
    _contentView.backgroundColor = [UIColor redColor];
    [_scrollView addSubview:_contentView];
    [_contentView release];
    
    for (int i = 1; i <= 5; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(300*(i-1), 0, 300, 300)];
        imageView.backgroundColor = [UIColor clearColor];
        imageView.image = [UIImage imageNamed:@"Default.png"];
        imageView.contentMode = UIViewContentModeScaleAspectFit; //图片等比缩放
        [_contentView addSubview:imageView];
        [imageView release];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(300*(i-1), 0, 300, 300)];
        label.backgroundColor = [UIColor clearColor];
        label.font = [UIFont boldSystemFontOfSize:100];
        label.textColor = [UIColor whiteColor];
        label.textAlignment = UITextAlignmentCenter;
        label.text = [NSString stringWithFormat:@"%i",i];
        [_contentView addSubview:label];
        [label release];
    }
    
    myTimer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(scrollToNextPage:) userInfo:nil repeats:YES];
    
    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(10, 320, 300, 40)];
    _pageControl.numberOfPages = 5;
    [_pageControl addTarget:self action:@selector(pageControlClicked:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_pageControl];
    [_pageControl release];
}

#pragma mark - Custom methods

- (void)scrollToNextPage:(id)sender
{
    int pageNum=self.pageControl.currentPage;
    CGSize viewSize=self.myScrollView.frame.size;
//    CGRect rect=CGRectMake((pageNum+2)*viewSize.width, 0, viewSize.width, viewSize.height);
//    [self.myScrollView scrollRectToVisible:rect animated:NO];
//    pageNum++;
//    if (pageNum==imageArray.count) {
//        CGRect newRect=CGRectMake(viewSize.width, 0, viewSize.width, viewSize.height);
//        [self.myScrollView scrollRectToVisible:newRect animated:NO];
//    }
}

- (void)pageControlClicked:(id)sender
{
    [_scrollView setContentOffset:CGPointMake(_pageControl.currentPage * 300, 0) animated:YES];
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return _contentView;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    _pageControl.currentPage = _scrollView.contentOffset.x / 300;
}

#pragma mark - memory managment methods

@end


