//
//  ExpandedTextView.m
//  UITableViewHelperExample
//
//  Created by Fernando Mazzon on 2/10/14.
//  Copyright (c) 2014 Fernando Mazzon. All rights reserved.
//

#import "ExpandedTextView.h"

@interface ExpandedTextView ()

@end

@implementation ExpandedTextView

- (void)setContentSize:(CGSize)contentSize
{
    [super setContentSize:contentSize];
    [self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
    return self.contentSize;
}

@end
