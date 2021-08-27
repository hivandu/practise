//
//  UTTwoViewController.m
//  UTDemo06
//
//  Created by Hivan Du on 13-6-16.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTTwoViewController.h"

@implementation UTTwoViewController

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
    self.title = @"Two";
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    bgImageView.backgroundColor = [UIColor clearColor];
    bgImageView.image = [UIImage imageNamed:@"bg2.png"];
    [self.view addSubview:bgImageView];
    [bgImageView release];
    
    UITextField *textFiled = [[UITextField alloc] initWithFrame:CGRectMake(10, 10, 300, 31) ];
    textFiled.borderStyle = UITextBorderStyleRoundedRect; //输入框样式
    textFiled.textAlignment = UITextAlignmentLeft;
    textFiled.font = [UIFont systemFontOfSize:14.0f];
    textFiled.textColor = [UIColor blackColor];
    textFiled.keyboardType = UIKeyboardTypeEmailAddress;
    textFiled.returnKeyType = UIReturnKeyDone;
    textFiled.clearButtonMode = UITextFieldViewModeWhileEditing; //清空按钮
    textFiled.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter; //上下垂直居中
//    textFiled.secureTextEntry = YES;
    textFiled.placeholder = @"请输入字符串";
    textFiled.delegate = self;
    [self.view addSubview:textFiled];
    [textFiled release];
    
    [textFiled becomeFirstResponder];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 50, 300, 100)];
    textView.backgroundColor = [UIColor whiteColor];
    textView.textColor = [UIColor orangeColor];
    textView.keyboardType = UIKeyboardTypeDefault;
    textView.returnKeyType = UIReturnKeySend;
    textView.delegate = self;
    [self.view addSubview:textView];
    [textView release];
}

#pragma mark - Custom methods

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        NSLog(@"%@", textView.text);
        [textView resignFirstResponder];
        return NO; // 字符不展示
    }
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
//    NSLog(@"%@, %@, length = %i", string, textField.text, textField.text.length);
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"%@", textField.text);
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - memory managment methods

@end


