//
//  UITableView+UITableViewHelper.m
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 12/21/12.
//  Copyright (c) 2012 UITableViewHelper. All rights reserved.
//

#import "UITableView+UITableViewHelper.h"

@implementation UITableView (UITableViewHelper)

- (UITableViewCell<TableViewCellProtocol> *)cellOfClass:(Class<TableViewCellProtocol>)class
{
    return [self cellOfClass:class forObject:nil];
}

- (UITableViewCell<TableViewCellProtocol> *)cellOfClass:(Class<TableViewCellProtocol>)class forObject:(id)object
{
    return [class cellForObject:object inTableView:self];
}

- (UITableViewCell<TableViewCellProtocol> *)cellOfClass:(Class<TableViewCellProtocol>)class withObject:(id)object
{
    UITableViewCell<TableViewCellProtocol> *cell = [self cellOfClass:class forObject:object];
    if ([cell respondsToSelector:@selector(setObject:)]) {
        [cell setObject:object];
    }
    
    return cell;
}

@end
