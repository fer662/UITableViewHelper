//
//  TableViewCell.m
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 12/21/12.
//  Copyright (c) 2012 UITableViewHelper. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

+ (instancetype)cellFromNib;
{
    return [[[NSBundle mainBundle] loadNibNamed:[self identifier] owner:nil options:nil] objectAtIndex:0];
}

+ (NSString *)identifier
{
    return NSStringFromClass([self class]);
}

- (NSString *)reuseIdentifier
{
    return [[self class] identifier];
}

+ (CGFloat)heightForObject:(id)object
{
    return 0;
}

@end
