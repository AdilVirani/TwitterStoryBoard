//
//  XHTableViewController.m
//  TwitterPagging
//
//  Created by Adil Virani on 6/19/14.
//  Copyright (c) 2014 Adil Virani. All rights reserved.
//


#import "XHTableViewController.h"

@interface XHTableViewController ()

@end

@implementation XHTableViewController

- (void)loadDataSource {
    self.dataSource = (NSMutableArray *)@[@"Leak prevention policy: hollow points for the snitches",  @"Off to the apple store to get a new Macbook Air. So excited!", @"Spent 10 hours here today painting letters on windows #vscocam", @"Leak prevention policy: hollow points for the snitches", @"Off to the apple store to get a new Macbook Air"];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (!self.showPushDetail) {
        UIEdgeInsets edgeInsets = self.tableView.contentInset;
        edgeInsets.top = ([XHFoundationCommon isIOS7] ? 64 : 0);
        self.tableView.contentInset = edgeInsets;
        self.tableView.scrollIndicatorInsets = edgeInsets;
    }
    [self loadDataSource];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView DataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.textLabel.numberOfLines = 0;
    }
    cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"icon_avator%d", (indexPath.row % 5)]];
    cell.textLabel.text = self.dataSource[indexPath.row];
    
    return cell;
}

#pragma mark - UITableView Delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 120;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    XHTableViewController *detailTableViewController = [[[self class] alloc] init];
    detailTableViewController.showPushDetail = YES;
    detailTableViewController.title = @"Detail";
    [self.navigationController pushViewController:detailTableViewController animated:YES];
}

@end
