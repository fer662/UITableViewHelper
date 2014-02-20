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

+ (instancetype)cellFromNibForObject:(id)object
{
    return [self cellFromNibNamed:[self nibNameForObject:object]];
}

+ (instancetype)cellFromNibNamed:(NSString *)nibName;
{
    id cell = [[[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil] objectAtIndex:0];
    [cell setIdentifier:[self identifierForNibNamed:nibName]];
    return cell;
}

- (NSString *)reuseIdentifier
{
    return self.identifier;
}

+ (CGFloat)heightForObject:(id)object
{
    return 0;
}

+ (NSString *)identifierForNibNamed:(NSString *)nibName
{
    return [NSString stringWithFormat:@"%@_%@", NSStringFromClass(self), nibName];
}

+ (NSString *)nibNameForObject:(id)object
{
    return NSStringFromClass([self class]);
}

@end
