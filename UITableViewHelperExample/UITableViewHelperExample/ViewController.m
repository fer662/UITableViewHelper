//
//  ViewController.m
//  Sample
//
//  Created by Fernando Mazzon on 2/7/14.
//  Copyright (c) 2014 Fernando Mazzon. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+UITableViewHelper.h"
#import "MessageTableViewCell.h"
#import "Message.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *messages;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *avatar = [UIImage imageNamed:@"avatar.jpg"];
	self.messages = @[
                      [Message messageWithSender:@"John" text:@"I have a bad feeling about this!" avatar:avatar],
                      [Message messageWithSender:@"Paul" text:@"About what?" avatar:avatar],
                      [Message messageWithSender:@"Paul" text:@"Don't play dumb with me! You've seen how many bugs autolayout still has on iOS7, not to mention iOS6!" avatar:avatar],
                      [Message messageWithSender:@"Paul" text:@"Don't worry, everything is going to be ok... Autolayout is supposed to work fine by now... And if it doesn't, we can always go back to modifying frames manually and auto-resizing mask, right?" avatar:avatar],
                      [Message messageWithSender:@"John" text:@"Dude, that'd totally suck!" avatar:avatar],
                      ];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.messages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [tableView cellOfClass:[MessageTableViewCell class] withObject:self.messages[indexPath.row]];
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [MessageTableViewCell heightForObject:self.messages[indexPath.row]];
}

#pragma mark -

@end
