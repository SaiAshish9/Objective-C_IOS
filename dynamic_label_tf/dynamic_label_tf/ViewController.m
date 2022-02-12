//
//  ViewController.m
//  dynamic_label_tf
//
//  Created by Sai Ashish Darapureddy on 12/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(110, 82, 155, 64)];
    label.text = @"Welcome";
    label.textColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:20.0];
    label.highlighted = YES;
    label.tag = 10;
    label.hidden = NO;
    label.numberOfLines=1;
    [label.layer setBorderWidth:1.0f];
    [label.layer setCornerRadius:20.0];
    label.textAlignment = NSTextAlignmentCenter;
    label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin |
    UIViewAutoresizingFlexibleLeftMargin |
    UIViewAutoresizingFlexibleTopMargin |
    UIViewAutoresizingFlexibleBottomMargin |
    UIViewAutoresizingFlexibleHeight |
    UIViewAutoresizingFlexibleWidth;
    label.highlightedTextColor = [UIColor blackColor];
    [label.layer setBorderColor:[UIColor blueColor].CGColor];
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(16, 211, 343, 30)];
    text.borderStyle = UITextBorderStyleRoundedRect;
    text.textColor = [UIColor whiteColor];
    text.keyboardType = UIKeyboardTypePhonePad;
    text.secureTextEntry = YES;
    text.textAlignment = NSTextAlignmentCenter;
    text.font = [UIFont fontWithName:@"optima" size:20.0];
    text.backgroundColor = [UIColor colorWithRed:0/256.0 green:84/256.0 blue:129/256.0 alpha:1];
    text.autoresizingMask=  UIViewAutoresizingFlexibleRightMargin |
    UIViewAutoresizingFlexibleLeftMargin |
    UIViewAutoresizingFlexibleTopMargin |
    UIViewAutoresizingFlexibleBottomMargin |
    UIViewAutoresizingFlexibleHeight |
    UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:label];
    [self.view addSubview:text];
}

- (IBAction)btn1:(UIButton *)sender {
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(120, 92, 165, 74)];
    label.text = @"Welcome1";
    label.textColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:20.0];
    label.highlighted = YES;
    label.tag = 10;
    label.hidden = NO;
    label.numberOfLines=1;
    [label.layer setBorderWidth:1.0f];
    [label.layer setCornerRadius:20.0];
    label.textAlignment = NSTextAlignmentCenter;
    label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin |
    UIViewAutoresizingFlexibleLeftMargin |
    UIViewAutoresizingFlexibleTopMargin |
    UIViewAutoresizingFlexibleBottomMargin |
    UIViewAutoresizingFlexibleHeight |
    UIViewAutoresizingFlexibleWidth;
    label.highlightedTextColor = [UIColor blackColor];
    [label.layer setBorderColor:[UIColor blueColor].CGColor];
    [self.view addSubview:label];
}
@end
