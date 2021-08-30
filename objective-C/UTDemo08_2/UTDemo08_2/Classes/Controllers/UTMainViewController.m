//
//  UTMainViewController.m
//  UTDemo08_2
//
//  Created by Hivan Du on 13-6-30.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTMainViewController.h"

@interface UTMainViewController ()

@end

@implementation UTMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    _tabView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 416) style:UITableViewStyleGrouped];
    _tabView.backgroundView = nil;
    _tabView.backgroundColor = [UIColor clearColor];
    _tabView.delegate = self;
    _tabView.dataSource = self;
    [self.view addSubview:_tabView];
    [_tabView release];
    
    // 设置TableView的Head
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    headerView.backgroundColor = [UIColor cyanColor];
    _tabView.tableHeaderView = headerView;
    [headerView release];
    
    // 设置TableView的Foot
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    footerView.backgroundColor = [UIColor cyanColor];
    _tabView.tableFooterView = footerView;
    [footerView release];
}

#pragma mark - UITableViewDataSource and UITabViewDelegate methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (BOOL)tableView:(UITableView *)tableView canPerformAction:(SEL)action forRowAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender
{
    return 20;
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    return [NSString stringWithFormat:@"header, section = %i", section];
//}
//
//- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
//{
//    return [NSString stringWithFormat:@"footer, section = %i", section];
//}



- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
// Head的高度
{
    return 40;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
// Foot的高度
{
    return 30;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    headerView.backgroundColor = [UIColor redColor];
    return [headerView autorelease];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 30)];
    footerView.backgroundColor = [UIColor greenColor];
    return [footerView autorelease];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 3;
    }else if (section == 1){
        return 5;
    }
    return 20;
}


// 设置行高的代理
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            return 80;
        }
    }
    return  50;
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *kCellIdentifier = @"kCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier] autorelease];
        
        // table设置点击后的颜色
//        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        // table 设置点击的标识 (大部分时候设置为None，什么都没有)
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
//
//    在不同section的时候会执行的样式不同
//    
    if (indexPath.section == 0) {
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }else if (indexPath.section == 1)
    {
        cell.selectionStyle = UITableViewCellSelectionStyleGray;
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    }else{
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
//
//    
    
    cell.textLabel.text = [NSString stringWithFormat:@"section = %i, row = %i", indexPath.section, indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
//cell的DisclosureButton被点击后的事件
{
    // 点击后立刻调用松开状态。
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // 设置弹出一个Alert来测试
    NSString *message = [NSString stringWithFormat:@"section = %i, row = %i", indexPath.section, indexPath.row];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"didSelect"
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    
    [alert show];
    [alert release];
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//Table变成选中状态进行的操作
{
    // 点击后立刻调用松开状态。
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // 设置弹出一个Alert来测试
    NSString *message = [NSString stringWithFormat:@"section = %i, row = %i", indexPath.section, indexPath.row];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"didSelect"
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    
    [alert show];
    [alert release];
}

//- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
//Table变成非选中状态的操作
//{
//    NSString *message = [NSString stringWithFormat:@"section = %i, row = %i", indexPath.section, indexPath.row];
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"didDeSelect" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//    
//    [alert show];
//    [alert release];
//}

#pragma mark - memory management methods

- (void)viewWillUnload
{
    [super viewWillUnload];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
