//
//  UTFourViewController.m
//  UTDemo06
//
//  Created by Hivan Du on 13-6-16.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTFourViewController.h"

@implementation UTFourViewController

#pragma mark - view lifecycle methods

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
    self.title = @"Four";
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    bgImageView.backgroundColor = [UIColor clearColor];
    bgImageView.image = [UIImage imageNamed:@"bg4.png"];
    [self.view addSubview:bgImageView];
    [bgImageView release];
    
    _webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 323)];
    _webView.backgroundColor = [UIColor blackColor];
    _webView.delegate = self;
    _webView.scalesPageToFit = YES;
    [self.view addSubview:_webView];
    [_webView release];
    
    NSString *URLString = @"http://youku.com";
    NSURL *URL = [NSURL URLWithString:URLString];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    [_webView loadRequest:request];
    
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 323, 320, 44)];
    [self.view addSubview:toolbar];
    [toolbar release];
    
    UIBarButtonItem *backButton
    = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind 
                                                    target:self 
                                                    action:@selector(backButtonClicked:)];
    backButton.tag = 1;
    
    UIBarButtonItem *forwardButton
    = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward 
                                                    target:self 
                                                    action:@selector(forwardButtonClicked:)];
    forwardButton.tag = 2;
    
    UIBarButtonItem *refreshButton
    = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh 
                                                    target:self 
                                                    action:@selector(refreshButtonClicked:)];
    refreshButton.tag = 10;
    
    UIBarButtonItem *fixSpaceButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    
    fixSpaceButton.width = 60;
    
    UIBarButtonItem *flexibleSpaceButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    [toolbar setItems:[NSArray arrayWithObjects: backButton,fixSpaceButton, forwardButton, flexibleSpaceButton, refreshButton,  nil]];
    
    [backButton release];
    [forwardButton release];
    [refreshButton release];
    [fixSpaceButton release];
    [flexibleSpaceButton release];
    
    
    
    _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(150, 150, 20, 20)];
    _activityIndicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    _activityIndicatorView.hidesWhenStopped = YES;
    [self.view addSubview:_activityIndicatorView];
    [_activityIndicatorView release];
    
}

#pragma mark -Custom event methods

- (void)backButtonClicked:(id)sender
{
    if ([_webView canGoBack]) {
        
        [_webView goBack];
    }
}

- (void)forwardButtonClicked:(id)sender
{
    if ([_webView canGoForward]) {
        
        [_webView goForward];
    }
}

- (void)refreshButtonClicked:(id)sender
{
    [_webView reload];
}

#pragma mark - UIWebView methods

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    
}

- (BOOL)webView:(UIWebView *)webView
    shouldStartLoadWithRequest:(NSURLRequest *)request
    navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"%@", [request.URL absoluteString]);
    if ([[request.URL absoluteString] isEqualToString:@"http://tv.youku.com/"]) {
        return NO;
    }
    return YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [_activityIndicatorView stopAnimating];
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [_activityIndicatorView startAnimating];

    UIToolbar *toolbar = (UIToolbar *)[self.view viewWithTag:10];
    UIBarButtonItem *forwardButton = nil;
    UIBarButtonItem *backButton = nil;
    
    for (int i = 0; i < [toolbar.items count]; i++) {
        UIBarButtonItem *currenItem = (UIBarButtonItem *)[toolbar.items objectAtIndex:i];
        if (currenItem.tag == 1) {
            backButton = currenItem;
        }else if (currenItem.tag == 2){
            forwardButton = currenItem;
        }
    }
//    if (<#condition#>) {
//        <#statements#>
//    }
}

#pragma mark - memory managment methods

@end
