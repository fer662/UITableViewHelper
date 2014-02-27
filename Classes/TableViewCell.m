//
//  TableViewCell.m
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 12/21/12.
//  Copyright (c) 2012 UITableViewHelper. All rights reserved.
//

#import "TableViewCell.h"
#import "UITableView+UITableViewHelper.h"

@interface TableViewCell ()

@property (nonatomic, strong) NSString *identifier;

@end

@implementation TableViewCell

@synthesize object = _object;

+ (instancetype)cellForObject:(id)object inTableView:(UITableView *)tableView
{
    return [self cellFromIdentifier:[self cellIdentifierForObject:object] inTableView:tableView];
}

+ (instancetype)cellFromIdentifier:(NSString *)identifier inTableView:(UITableView *)tableView
{
    id cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:identifier owner:nil options:nil] objectAtIndex:0];
    }
    [cell setIdentifier:identifier];
    return cell;
}

- (NSString *)reuseIdentifier
{
    return self.identifier;
}

+ (CGFloat)heightForObject:(id)object inTableView:(UITableView *)tableView
{
    return 0;
}

+ (NSString *)cellIdentifierForObject:(id)object
{
    return NSStringFromClass([self class]);
}

@end
