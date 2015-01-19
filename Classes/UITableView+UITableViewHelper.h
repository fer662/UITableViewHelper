//
//  UITableView+UITableViewHelper.h
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 12/21/12.
//  Copyright (c) 2012 UITableViewHelper. All rights reserved.
//

#import "TableViewCellProtocol.h"

@interface UITableView (UITableViewHelper)

/**
  Dequeues or creates a new cell of the passed type. Can be used just if the cell class is associated with a single nib file
 */
- (UITableViewCell<TableViewCellProtocol> *)cellOfClass:(Class<TableViewCellProtocol>)clazz;

/**
 Dequeues or creates a new cell of the passed type that is able to represent the passed object (it is used to pick the right nib file)
 */
- (UITableViewCell<TableViewCellProtocol> *)cellOfClass:(Class<TableViewCellProtocol>)clazz forObject:(id)object;

/**
 Dequeues or creates a new cell of the passed type and then sets it up the passed object
 */
- (UITableViewCell<TableViewCellProtocol> *)cellOfClass:(Class<TableViewCellProtocol>)clazz withObject:(id)object;

@end
