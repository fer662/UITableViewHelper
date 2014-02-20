//
//  UITableView+UITableViewHelper.m
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 12/21/12.
//  Copyright (c) 2012 UITableViewHelper. All rights reserved.
//

#import "UITableView+UITableViewHelper.h"

@implementation UITableView (UITableViewHelper)

- (UITableViewCell<TableViewCellProtocol> *)cellOfClass:(Class<TableViewCellProtocol>)class forObject:(id)object
{
    UITableViewCell<TableViewCellProtocol> *cell = [self dequeueReusableCellWithIdentifier:[class identifierForNibNamed:[class nibNameForObject:object]]];
    if (!cell) {
        cell = [class cellFromNibForObject:object];
    }
    
    return cell;
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
