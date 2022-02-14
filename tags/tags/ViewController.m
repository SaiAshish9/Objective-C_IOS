//
//  ViewController.m
//  tags
//
//  Created by Sai Ashish Darapureddy on 14/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _outlbl.textColor = [UIColor orangeColor];
    _outlbl.text = @"Outlet label";
    
    UILabel *lbl = (UILabel *)[self.view viewWithTag:1];
    lbl.text=@"Tag";
    lbl.textColor = [UIColor blueColor];
//   UIButton *x = (UIButton *)[self.view viewWithTag:1];
//   UIImageView
//   UITextField
}


@end
