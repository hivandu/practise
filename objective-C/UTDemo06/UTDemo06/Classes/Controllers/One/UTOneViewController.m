//
//  UTOneViewController.m
//  UTDemo06
//
//  Created by Hivan Du on 13-6-16.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTOneViewController.h"
#import "UTSubViewController.h"

#define kPushButtonTag 10
#define kSwitchButtonTag 11

@implementation UTOneViewController

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
    self.title = @"One";
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    bgImageView.backgroundColor = [UIColor clearColor];
    bgImageView.image = [UIImage imageNamed:@"bg1.png"];
    [self.view addSubview:bgImageView];
    [bgImageView release];
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    pushButton.frame = CGRectMake(10, 10, 300, 50);
    UIImage *blueButtonBGImage = [UIImage imageNamed:@"blueButton.png"];
    UIImage *strechableBlueBGImage = [blueButtonBGImage stretchableImageWithLeftCapWidth:13 topCapHeight:24];
    [pushButton setBackgroundImage:strechableBlueBGImage forState:UIControlStateNormal];
    [pushButton setTitle:@"push" forState:UIControlStateNormal];
    [pushButton setTitle:@"clicked!!!!" forState:UIControlStateHighlighted];
    [pushButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    pushButton.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [pushButton addTarget:self action:@selector(pushButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    pushButton.tag = kPushButtonTag;
    
    UIButton *switchButton = [UIButton buttonWithType:UIButtonTypeCustom];
    switchButton.frame = CGRectMake(10, 70, 300, 50);
    UIImage *whiteButtonBGImage = [UIImage imageNamed:@"whiteButton.png"];
    UIImage *strechableWhiteBGImage = [whiteButtonBGImage stretchableImageWithLeftCapWidth:13 topCapHeight:24];
    [switchButton setBackgroundImage:strechableWhiteBGImage forState:UIControlStateNormal];
    [switchButton setTitle:@"switch" forState:UIControlStateNormal];
    [switchButton setTitle:@"Clicked!!!!" forState:UIControlStateHighlighted];
    [switchButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    switchButton.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [switchButton addTarget:self action:@selector(switchButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:switchButton];
    switchButton.tag = kSwitchButtonTag;
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 130, 300, 100)];
    imageView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:imageView];
    [imageView release];
    
    imageView.image = [UIImage imageNamed:@"Default.png"];
//    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    CGSize imageSize = imageView.image.size;
    CGFloat width = 100 * imageSize.width / imageSize.height;
    
    imageView.frame = CGRectMake(10, 130, width, 100);
    
    CGFloat labelY = imageView.frame.origin.y + imageView.frame.size.height + 10;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, labelY, 300, 100)];
    label.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:label];
    [label release];
    
    NSString *text = @"this ia a label. this ia a label. this ia a label. this ia a label.this ia a label. this ia a label. this ia a label. this ia a label.this ia a label. this ia a label. this ia a label. this ia a label.this ia a label. this ia a label. this ia a label. this ia a label.this ia a label. this ia a label. this ia a label. this ia a label.this ia a label. this ia a label. this ia a label. this ia a label.this ia a label. this ia a label. this ia a label. this ia a label.this ia a label. this ia a label. this ia a label. this ia a label.this ia a label. this ia a label. this ia a label. this ia a label.";
    
    label.numberOfLines = 0;
    label.lineBreakMode = UILineBreakModeWordWrap;
    label.text = text;
    label.font = [UIFont systemFontOfSize:14];
    label.textAlignment = UITextAlignmentLeft;
    label.textColor = [UIColor whiteColor];
    CGSize textSize = [text sizeWithFont:label.font constrainedToSize:CGSizeMake(300, 10000) lineBreakMode:UILineBreakModeWordWrap];
    label.frame = CGRectMake(10, labelY, 300, textSize.height);
    
    UIBarButtonItem *alertButton = [[UIBarButtonItem alloc] initWithTitle:@"alert" style:UIBarButtonItemStyleBordered target:self action:@selector(alertButtonClicked:)];
    self.navigationItem.rightBarButtonItem = alertButton;
    [alertButton release];
}

#pragma mark - Custom methods

- (void)alertButtonClicked:(id)sender
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"alert title" message:@"alert message\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n12939213jdsaidj" delegate:self cancelButtonTitle:nil otherButtonTitles:@"同意", @"不同意",nil];
    [alertView show];
    [alertView release];
}

- (void)pushButtonClicked:(UIButton *)button
{
    UTSubViewController *subViewController= [[UTSubViewController alloc] init];
    subViewController.backButtonTitle = @"push back";
    [self.navigationController pushViewController:subViewController animated:YES];
    [subViewController release];
}

- (void)switchButtonClicked:(UIButton *)button
{
    UTSubViewController *subViewController= [[UTSubViewController alloc] init];
    subViewController.backButtonTitle =@"switch back";
    [self presentModalViewController:subViewController animated:YES];
    [subViewController release];
}

#pragma mark - UIAlertViewDelegate methods

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"同意"]) {
        UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"action sheet" delegate:self cancelButtonTitle:@"cancel" destructiveButtonTitle:@"destructive" otherButtonTitles:@"two", nil];
//        [actionSheet showFromTabBar:self.tabBarController.tabBar];
        [actionSheet showInView:self.view.window];
//        [actionSheet showInView:self.view];
        [actionSheet release];
    }
    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"two"]) {
        NSLog(@"This is a log");
    }
    
}


#pragma mark - memory management methods

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)dealloc
{
    [super dealloc];
}


@end


