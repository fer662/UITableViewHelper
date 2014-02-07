//
//  TableViewCellProtocol.h
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 12/21/12.
//  Copyright (c) 2012 UITableViewHelper. All rights reserved.
//

@protocol TableViewCellProtocol <NSObject>

+ (instancetype)cellFromNib;
+ (NSString *)identifier;
+ (CGFloat)heightForObject:(id)object;

@optional

@property (nonatomic, strong) id object;

@end
