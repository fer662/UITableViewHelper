//
//  AutoLayoutTableView.m
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 2/6/14.
//  Copyright (c) 2014 Fernando Mazzon. All rights reserved.
//

#import "AutoLayoutTableViewCell.h"
#import <RuntimeHelpers/RuntimeHelpers.h>

static char kOffscreenCellKey;

@implementation AutoLayoutTableViewCell

#pragma mark - AutoLayoutTableViewCell

+ (AutoLayoutTableViewCell *)offscreenCell
{
    return [(id)self associatedObjectForKey:&kOffscreenCellKey orBlockResult:^id{
        return [self cellFromNib];
    }];
}

#pragma mark - TableViewCellProtocol

+ (CGFloat)heightForObject:(id)object
{
    [[self offscreenCell] setObject:object];
    
    [[self offscreenCell] setNeedsLayout];
    [[self offscreenCell] layoutIfNeeded];
    
    return [[self offscreenCell].contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height + 1;
}

#pragma mark -

@end
