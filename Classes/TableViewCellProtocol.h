//
//  TableViewCellProtocol.h
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 12/21/12.
//  Copyright (c) 2012 UITableViewHelper. All rights reserved.
//

@protocol TableViewCellProtocol <NSObject>

+ (instancetype)cellFromIdentifier:(NSString *)identifier inTableView:(UITableView *)tableView;
+ (instancetype)cellForObject:(id)object inTableView:(UITableView *)tableView;

/**
 returns the height the cell needs to represent the passed object. Must override.
 */
+ (CGFloat)heightForObject:(id)object inTableView:(UITableView *)tableView;

/**
 returns one of the identifier for the cell with the layout needed to represent the passed object. This is used to
 dequeue the right cell type from a tableView, or to instantiate a new one (identifier is used as nibName). Default
 implementation returns the class name.
 */
+ (NSString *)cellIdentifierForObject:(id)object;

@optional

@property (nonatomic, strong) id object;

@end
