//
//  AutoLayoutTableView.h
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 2/6/14.
//  Copyright (c) 2014 Fernando Mazzon. All rights reserved.
//

#import "TableViewCell.h"

@interface AutoLayoutTableViewCell : TableViewCell

/**
 Returns whether this is an offscreen cell, used for height calculation only. You can make optimizations based off this flag
 within setObject: (i.e. it doesn't really matter if you load the correct image so long as it has the correct size, as 
 this cell will never be seen).
 */
@property (nonatomic, assign, readonly) BOOL offscreen;

/**
 Provides means to get the offscreen cell that is used for the height computation, in case you want to roll your own
 computation for some reason. (E.G. autolayout being unncessarily slow).
 */
+ (AutoLayoutTableViewCell *)offscreenCellForIdentifier:(NSString *)identifier tableView:(UITableView *)tableView;

@end
