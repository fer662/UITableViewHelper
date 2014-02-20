//
//  MessageTableViewCell.m
//  UITableViewHelper
//
//  Created by Fernando Mazzon on 2/7/14.
//  Copyright (c) 2014 Fernando Mazzon. All rights reserved.
//

#import "MessageTableViewCell.h"
#import "Message.h"

@interface MessageTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation MessageTableViewCell

#pragma mark -

- (void)awakeFromNib
{
    //Do your configuration that can't be done from a nib file here
    self.avatarImageView.layer.cornerRadius = 5;
    self.avatarImageView.layer.masksToBounds = YES;
}

#pragma mark - TableViewCellProtocol

- (void)setObject:(Message *)message
{
    //Configure the cell with the model object here
    [super setObject:message];

    self.messageLabel.text = message.text;
    self.textView.text = message.text;
    self.nameLabel.text = message.sender;
    self.avatarImageView.image = message.avatar;
}

#pragma mark -

@end
