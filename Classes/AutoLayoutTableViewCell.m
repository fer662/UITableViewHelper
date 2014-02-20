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

+ (AutoLayoutTableViewCell *)offscreenCellForNibName:(NSString *)nibName
{
    return [(id)self associatedObjectForKey:&kOffscreenCellKey orBlockResult:^id{
        NSMutableDictionary *offscreenCells = [NSMutableDictionary dictionary];
        for (NSString *nibName in [self nibNames]) {
            offscreenCells[nibName] = [self cellFromNibNamed:nibName];
        }
        return [offscreenCells copy];
    }][nibName];
}

#pragma mark - TableViewCellProtocol

+ (CGFloat)heightForObject:(id)object
{
    AutoLayoutTableViewCell *cell = [self offscreenCellForNibName:[self nibNameForObject:object]];
    
    [cell setObject:object];
    
    [cell setNeedsLayout];
    [cell layoutIfNeeded];
    
    return [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height + 1;
}

#pragma mark -

@end
