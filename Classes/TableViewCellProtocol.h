//
//  TableViewCellProtocol.h
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 12/21/12.
//  Copyright (c) 2012 UITableViewHelper. All rights reserved.
//

@protocol TableViewCellProtocol <NSObject>

+ (instancetype)cellFromNibNamed:(NSString *)nibName;
+ (instancetype)cellFromNibForObject:(id)object;

/**
 returns what the identifier for cells using the passed nibName
 */
+ (NSString *)identifierForNibNamed:(NSString *)nibName;

/**
 returns the height the cell needs to represent the passed object
 */
+ (CGFloat)heightForObject:(id)object;

/**
 returns an array with the names of all the possible nib files with the different layouts this cell might use
 */
+ (NSArray *)nibNames;

/**
 returns one of the nib file names with the layout needed to represent the passed object
 */
+ (NSString *)nibNameForObject:(id)object;

@optional

@property (nonatomic, strong) id object;

@end
