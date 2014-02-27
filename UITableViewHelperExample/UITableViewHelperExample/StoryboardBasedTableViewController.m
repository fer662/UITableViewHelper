//
//  StoryboardBasedTableController.m
//  UITableViewHelperExample
//
//  Created by Fernando Mazzon on 2/27/14.
//  Copyright (c) 2014 Fernando Mazzon. All rights reserved.
//

#import "StoryboardBasedTableViewController.h"
#import "UITableView+UITableViewHelper.h"
#import "MessageTableViewCell.h"
#import "Message.h"

@interface StoryboardBasedTableViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *messages;

@end

@implementation StoryboardBasedTableViewController

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

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 10;
}

#pragma mark -


@end
