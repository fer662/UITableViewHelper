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

@interface AutoLayoutTableViewCell ()

@property (nonatomic, assign) BOOL offscreen;

@end

@implementation AutoLayoutTableViewCell

#pragma mark - AutoLayoutTableViewCell

+ (AutoLayoutTableViewCell *)offscreenCellForNibName:(NSString *)nibName
{
    NSMutableDictionary *offscreenCellDictionary = [(id)self associatedObjectForKey:&kOffscreenCellKey orBlockResult:^id{
        return [NSMutableDictionary dictionary];
    }];
    
    if (!offscreenCellDictionary[nibName]) {
        AutoLayoutTableViewCell *cell = [self cellFromNibNamed:nibName];
        [cell setOffscreen:YES];
        offscreenCellDictionary[nibName] = cell;
    }
    return offscreenCellDictionary[nibName];
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
