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

+ (AutoLayoutTableViewCell *)offscreenCellForIdentifier:(NSString *)identifier tableView:(UITableView *)tableView
{
    NSMutableDictionary *offscreenCellDictionary = [(id)self associatedObjectForKey:&kOffscreenCellKey orBlockResult:^id{
        return [NSMutableDictionary dictionary];
    }];
    
    if (!offscreenCellDictionary[identifier]) {
        offscreenCellDictionary[identifier] = [self cellFromIdentifier:identifier inTableView:tableView];
		[offscreenCellDictionary[identifier] setOffscreen:YES];
    }
    return offscreenCellDictionary[identifier];
}

#pragma mark - TableViewCellProtocol

+ (CGFloat)heightForObject:(id)object inTableView:(UITableView *)tableView
{
    AutoLayoutTableViewCell *cell = [self offscreenCellForIdentifier:[self cellIdentifierForObject:object] tableView:tableView];
    
    [cell setObject:object];
    
    [cell setNeedsLayout];
    [cell layoutIfNeeded];
    
    return [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height + 1;
}

#pragma mark -

@end
