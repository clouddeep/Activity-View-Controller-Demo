//
//  ViewController.m
//  ActivityViewTest
//
//  Created by Shou Cheng Tuan  on 2015/3/23.
//  Copyright (c) 2015年 Shou Cheng Tuan . All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textField;
@property (weak, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) UIActivityViewController *activityViewController;
@end



@implementation ViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark -
#pragma mark - Private methods
- (IBAction)shareAction:(id)sender
{
    self.activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[self.textField.text] applicationActivities:nil];
    [self presentViewController:self.activityViewController animated:YES completion:nil];
//    [self presentViewController:self.activityViewController animated:YES completion:@[UIActivityTypePostToFacebook, UIActivityTypePostToTwitter, UIActivityTypePostToWeibo]];
}

- (void)setTextField:(UITextView *)textField
{
    _textField = textField;
    _textField.layer.cornerRadius = 3;
}

- (void)setActionButton:(UIButton *)actionButton
{
    _actionButton = actionButton;
    _actionButton.layer.cornerRadius = 3;
}

@end
