//
//  Message.m
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 2/7/14.
//  Copyright (c) 2014 Fernando Mazzon. All rights reserved.
//

#import "Message.h"

@implementation Message

+ (Message *)messageWithSender:(NSString *)sender text:(NSString *)text avatar:(UIImage *)avatar
{
    Message *m = [[Message alloc] init];
    m.sender = sender;
    m.avatar = avatar;
    m.text = text;
    return m;
}

@end
