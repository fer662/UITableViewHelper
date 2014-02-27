//
//  Message.h
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 2/7/14.
//  Copyright (c) 2014 Fernando Mazzon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject

@property (nonatomic, strong) NSString *sender;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) UIImage *avatar;

+ (Message *)messageWithSender:(NSString *)sender text:(NSString *)text avatar:(UIImage *)avatar;

+ (NSArray *)mockMessages;

@end
