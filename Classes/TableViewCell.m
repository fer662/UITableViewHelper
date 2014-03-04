//
//  TableViewCell.m
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 12/21/12.
//  Copyright (c) 2012 UITableViewHelper. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell ()

@property (nonatomic, strong) NSString *identifier;

@end

@implementation TableViewCell

@synthesize object = _object;

+ (instancetype)cellForObject:(id)object inTableView:(UITableView *)tableView
{
    return [self cellFromIdentifier:[self cellIdentifierForObject:object] inTableView:tableView];
}

+ (instancetype)cellFromNibWithIdentifier:(NSString *)identifier
{
    return [[[NSBundle mainBundle] loadNibNamed:identifier owner:nil options:nil] objectAtIndex:0];
}

+ (instancetype)cellFromIdentifier:(NSString *)identifier inTableView:(UITableView *)tableView
{
    id cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        if ([self useUINib]) {
            [tableView registerNib:[UINib nibWithNibName:identifier bundle:nil] forCellReuseIdentifier:identifier];
            cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        }
        else {
            cell = [self cellFromNibWithIdentifier:identifier];
        }
    }
    [cell setIdentifier:identifier];
    return cell;
}

+ (BOOL)useUINib
{
    return NO;
}

- (NSString *)reuseIdentifier
{
    return self.identifier;
}

+ (CGFloat)heightForObject:(id)object
{
    return [self heightForObject:object inTableView:nil];
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
