//
//  ViewController.m
//  Sample
//
//  Created by Fernando Mazzon on 2/7/14.
//  Copyright (c) 2014 Fernando Mazzon. All rights reserved.
//

#import "NibBasedTableViewController.h"
#import "UITableView+UITableViewHelper.h"
#import "MessageTableViewCell.h"
#import "Message.h"

@interface NibBasedTableViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *messages;

@end

@implementation NibBasedTableViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.messages = [Message mockMessages];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.messages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [tableView cellOfClass:[MessageTableViewCell class] withObject:self.messages[indexPath.row]];
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [MessageTableViewCell heightForObject:self.messages[indexPath.row] inTableView:tableView];
}

#pragma mark -

@end
