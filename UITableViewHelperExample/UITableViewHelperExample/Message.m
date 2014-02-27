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

+ (NSArray *)mockMessages
{
    UIImage *avatar = [UIImage imageNamed:@"avatar.jpg"];
	return @[
                      [Message messageWithSender:@"John" text:@"I have a bad feeling about this!" avatar:avatar],
                      [Message messageWithSender:@"Paul" text:@"About what?" avatar:avatar],
                      [Message messageWithSender:@"John" text:@"Don't play dumb with me! You've seen how many bugs autolayout still has on iOS7, not to mention iOS6!" avatar:avatar],
                      [Message messageWithSender:@"Paul" text:@"Don't worry, everything is going to be ok... Autolayout is supposed to work fine by now... And if it doesn't, we can always go back to modifying frames manually and auto-resizing mask, right?" avatar:avatar],
                      [Message messageWithSender:@"John" text:@"Dude, that'd totally suck!" avatar:avatar],
                      [Message messageWithSender:@"John" text:@"I have a bad feeling about this!" avatar:avatar],
                      [Message messageWithSender:@"Paul" text:@"About what?" avatar:avatar],
                      [Message messageWithSender:@"John" text:@"Don't play dumb with me! You've seen how many bugs autolayout still has on iOS7, not to mention iOS6!" avatar:avatar],
                      [Message messageWithSender:@"Paul" text:@"Don't worry, everything is going to be ok... Autolayout is supposed to work fine by now... And if it doesn't, we can always go back to modifying frames manually and auto-resizing mask, right?" avatar:avatar],
                      [Message messageWithSender:@"John" text:@"Dude, that'd totally suck!" avatar:avatar],
                      ];
}

@end
